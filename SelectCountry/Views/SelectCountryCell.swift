//
//  SelectCountryCell.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//
import Foundation
import UIKit

class SelectCountryCell: UITableViewCell {

        static let identifier = "CountryCell"
        
        private let nameLabel = UILabel()
        private let codeLabel = UILabel()
        private let capitalLabel = UILabel()
        private let regionLabel = UILabel()
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupViews()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupViews()
        }
        
        private func setupViews() {
            nameLabel.font = .boldSystemFont(ofSize: 16)
            regionLabel.font = .systemFont(ofSize: 12)
            codeLabel.font = .systemFont(ofSize: 14)
            capitalLabel.font = .systemFont(ofSize: 14)
            
            let stack = UIStackView(arrangedSubviews: [nameLabel, regionLabel, codeLabel])
            stack.axis = .horizontal
            stack.alignment = .leading
            stack.setCustomSpacing(50, after: regionLabel)
            stack.translatesAutoresizingMaskIntoConstraints = false
            
            let stackCode = UIStackView(arrangedSubviews: [capitalLabel])
            stackCode.axis = .horizontal
            stackCode.alignment = .leading
            stackCode.translatesAutoresizingMaskIntoConstraints = false
            
            let stackParent = UIStackView(arrangedSubviews: [stack, stackCode])
            stackParent.axis = .vertical
            stackParent.spacing = 10
            stackParent.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(stackParent)
            
            
            NSLayoutConstraint.activate([
                stackParent.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                stackParent.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
                stackParent.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
                stackParent.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
            ])
        }
        
        func configure(with country: CountryList) {
            nameLabel.text = country.name
            regionLabel.text = country.region
            codeLabel.text = country.code
            capitalLabel.text = country.capital
        }
}
