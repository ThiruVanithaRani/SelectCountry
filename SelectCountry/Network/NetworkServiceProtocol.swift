//
//  NetworkServiceProtocol.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

import Foundation

protocol NetworkServiceProtocol {
    func request<T: Decodable>(url: URL, completion: @escaping (Result<T, Error>) -> Void)
}
