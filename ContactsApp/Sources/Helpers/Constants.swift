//
//  Constants.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

enum Constants {
    
    // MARK: Colors
    enum Colors {
        static let background = Color(.systemBackground)
        static let primaryText = Color.primary
        static let secondaryText = Color.gray
        static let accent = Color.accentColor
        static let placeholder = Color.gray.opacity(0.3)
    }
    
    // MARK: Layout
    enum Layout {
        static let cornerRadius: CGFloat = 12
        static let spacing: CGFloat = 16
        static let padding: CGFloat = 20
    }
    
    // MARK: Images
    enum Images {
        static let emptyStateIcon = "person.2.fill"
    }
    
    // MARK: Accessibility Identifiers
    enum Accessibility {
        static let addContactButton = "addContactButton"
        static let contactList = "contactsList"
    }
}
