//
//  SelectCountryRepository.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

import Foundation

class SelectCountryRepository {
    private let networkService: NetworkServiceProtocol

    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }

    func fetchCountries(completion: @escaping (Result<[CountryList], Error>) -> Void) {
        networkService.request(url: APIEndpoint.countries.url, completion: completion)
    }
}
