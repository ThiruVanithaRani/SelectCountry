//
//  SelectCountryViewController.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

import UIKit

class SelectCountryViewController: UIViewController {

    //viewModel
    private let viewModel = SelectCountrieViewModel(repository: SelectCountryRepository(networkService: NetworkService()))
    
    @IBOutlet var tableView : UITableView!
    @IBOutlet var searchView : UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Select Country"
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(SelectCountryCell.self, forCellReuseIdentifier: SelectCountryCell.identifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        tableView.separatorStyle = .none
        
        fetchCountries()
    }

    private func fetchCountries() {
            viewModel.loadCountries { [weak self] in
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            }
        }
}

extension SelectCountryViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.filteredCountries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SelectCountryCell.identifier, for: indexPath) as? SelectCountryCell else {
            return UITableViewCell()
        }
        let country = viewModel.filteredCountries[indexPath.row]
        cell.configure(with: country)
        return cell
    }
}

// TableViewDelegate
extension SelectCountryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let country = viewModel.filteredCountries[indexPath.row]
        print("Selected: \(country.name)")
    }
}

// SearchBarDelegate
extension SelectCountryViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            viewModel.filterCountries(searchText: searchText)
            tableView.reloadData()
        }

        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.text = ""
            viewModel.filterCountries(searchText: "")
            tableView.reloadData()
        }
}
