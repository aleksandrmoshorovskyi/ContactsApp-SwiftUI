//
//  ContactsAppApp.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

@main
struct ContactsAppApp: App {
    private let config = AppConfig.shared
    
    init() {
        if let info = Bundle.main.infoDictionary {
            let environment = info["ENVIRONMENT_NAME"] as? String ?? "Unknown"
            let baseURL = info["BASE_URL"] as? String ?? "Unknown"
            
            print("Environment:", environment)
            print("Base URL:", baseURL)
        } else {
            print("Info.plist not found")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContactsListView()
        }
    }
}
