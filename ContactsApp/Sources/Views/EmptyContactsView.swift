//
//  EmptyContactsView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

struct EmptyContactsView: View {
    let onAddContact: () -> Void
    
    var body: some View {
        VStack(spacing: Constants.Layout.spacing * 2) {
            Spacer()
            
            Image(systemName: Constants.Images.emptyStateIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundStyle(Constants.Colors.placeholder)
                .accessibilityHidden(true)
            
            Text(L10n.contactsEmptyMessage)
                .font(.title3)
                .foregroundColor(Constants.Colors.secondaryText)
            
            Button(L10n.addContactButton, action: onAddContact)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .accessibilityIdentifier(Constants.Accessibility.addContactButton)
            
            Spacer()
        }
        .padding(Constants.Layout.padding)
    }
}
