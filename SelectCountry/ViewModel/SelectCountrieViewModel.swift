//
//  SelectCountriesViewModel.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

import UIKit


class SelectCountrieViewModel {
    private let repository: SelectCountryRepository
        private(set) var countries: [CountryList] = []
        private(set) var filteredCountries: [CountryList] = []

        init(repository: SelectCountryRepository) {
            self.repository = repository
        }

        func loadCountries(completion: @escaping () -> Void) {
            repository.fetchCountries { [weak self] result in
                switch result {
                case .success(let data):
                    self?.countries = data
                    self?.filteredCountries = data
                case .failure:
                    self?.countries = []
                    self?.filteredCountries = []
                }
                completion()
            }
        }

        func filterCountries(searchText: String) {
            if searchText.isEmpty {
                filteredCountries = countries
            } else {
                filteredCountries = countries.filter {
                    $0.name.lowercased().contains(searchText.lowercased())
                }
            }
        }
}
