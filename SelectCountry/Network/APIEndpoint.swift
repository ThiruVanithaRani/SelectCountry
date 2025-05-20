//
//  APIEndpoint.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//
import Foundation


enum APIEndpoint {
    case countries

    var path: String {
        switch self {
        case .countries:
            return "/32dcb892b06648910ddd40406e37fdab/raw/db25946fd77c5873b0303b858e861ce724e0dcd0/countries.json"
        }
    }

    var url: URL {
        let fullString = NetworkConfig.shared.baseURL + path
        guard let url = URL(string: fullString) else {
            fatalError("Invalid URL: \(fullString)")
        }
        return url
    }
}




