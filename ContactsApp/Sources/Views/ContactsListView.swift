//
//  ContentView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

struct ContactsListView: View {
    @StateObject private var viewModel = ContactsViewModel()

    // NEW → Стейт для показу екрана Add Contact
    @State private var isPresentingAddContact = false

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.contacts.isEmpty {
                    EmptyContactsView {
                        // 👉 натиснули кнопку "Add Contact"
                        isPresentingAddContact = true
                    }
                } else {
                    List(viewModel.contacts) { contact in
                        Text(contact.firstName)
                            .foregroundColor(Constants.Colors.primaryText)
                            .onTapGesture {
                                // TODO: тут будемо відкривати Edit Contact
                            }
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .background(Constants.Colors.background.ignoresSafeArea())
            .navigationTitle(L10n.contactsTitle)
            .navigationBarTitleDisplayMode(.large)
        }
        .sheet(isPresented: $isPresentingAddContact) {
            ContactFormView(
                viewModel: ContactFormViewModel(mode: .add)
            )
        }
    }
}
