//
//  AppConfig.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 07.11.2025.
//

import Foundation

final class AppConfig {
    static let shared = AppConfig()
    
    private init() {}

    private let info = Bundle.main.infoDictionary

    var environment: String {
        info?["ENVIRONMENT_NAME"] as? String ?? "Unknown"
    }
    
    var baseURL: String {
        let rawHost = info?["BASE_URL"] as? String ?? "api.example.com"

        if rawHost.hasPrefix("http://") || rawHost.hasPrefix("https://") {
            return rawHost
        }

        return "https://\(rawHost)"
    }
}
