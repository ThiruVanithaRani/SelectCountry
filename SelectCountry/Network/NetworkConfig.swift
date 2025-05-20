//
//  NetworkConfig.swift
//  SelectCountry
//
//  Created by Thiru on 20/05/2025.
//

import Foundation

struct NetworkConfig {
    static let shared = NetworkConfig()

    let baseURL: String

    private init() {
        #if DEBUG
        self.baseURL = "https://gist.githubusercontent.com/peymano-wmt"
        #else
        self.baseURL = "https://gist.githubusercontent.com/peymano-wmt" // or production URL
        #endif
    }
}
