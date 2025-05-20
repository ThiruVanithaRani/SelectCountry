//
//  NetworkService.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

import Foundation

class NetworkService: NetworkServiceProtocol {
    private let session: URLSession

       init(session: URLSession = .shared) {
           self.session = session
       }

       func request<T: Decodable>(url: URL, completion: @escaping (Result<T, Error>) -> Void) {
           let task = session.dataTask(with: url) { data, response, error in
               if let error = error {
                   print("Request Error: \(error.localizedDescription)")
                   return completion(.failure(error))
               }

               guard let data = data else {
                   print("No data received")
                   return completion(.failure(NSError(domain: "No data", code: 0)))
               }

               if let jsonString = String(data: data, encoding: .utf8) {
                   print("Raw JSON Response:\n\(jsonString)")
               } else {
                   print("Unable to decode data as UTF-8 string")
               }

               do {
                   let decoded = try JSONDecoder().decode(T.self, from: data)
                   completion(.success(decoded))
               } catch {
                   print("JSON Decoding Error: \(error)")
                   completion(.failure(error))
               }
           }
           task.resume()
       }
   }
