//
//  ContentView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

struct ContactsListView: View {
    @StateObject private var viewModel = ContactsViewModel()
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.contacts.isEmpty {
                    EmptyContactsView {
                        viewModel.addContact()
                    }
                } else {
                    List(viewModel.contacts) { contact in
                        Text(contact.name)
                            .foregroundColor(Constants.Colors.primaryText)
                    }
                    .listStyle(.insetGrouped)
                    .accessibilityIdentifier(Constants.Accessibility.contactList)
                }
            }
            .background(Constants.Colors.background.ignoresSafeArea())
            .navigationTitle(L10n.contactsTitle)
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
