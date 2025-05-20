//
//  APIEndpoints.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

enum HTTPMethodType: String {
    case get
    case post
    
    func getHttpMethod() -> String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        }
    }
}
