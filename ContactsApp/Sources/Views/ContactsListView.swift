//
//  ContentView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

//struct ContactsListView: View {
//    @StateObject private var viewModel = ContactsViewModel()
//    
//    var body: some View {
//        NavigationStack {
//            Group {
//                if viewModel.contacts.isEmpty {
//                    EmptyContactsView {
//                        viewModel.addContact()
//                    }
//                } else {
//                    List(viewModel.contacts) { contact in
//                        Text(contact.firstName)
//                            .foregroundColor(Constants.Colors.primaryText)
//                    }
//                    .listStyle(.insetGrouped)
//                }
//            }
//            .background(Constants.Colors.background.ignoresSafeArea())
//            .navigationTitle(L10n.contactsTitle)
//            .navigationBarTitleDisplayMode(.large)
//        }
//    }
//}

struct ContactsListView: View {
    @StateObject private var viewModel = ContactsViewModel()
    @State private var showAddContact = false
    
    var body: some View {
        NavigationStack {
            Group {
                if viewModel.contacts.isEmpty {
                    EmptyContactsView {
                        showAddContact = true
                    }
                } else {
                    List(viewModel.contacts) { contact in
                        Text(contact.firstName)
                            .foregroundColor(Constants.Colors.primaryText)
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .background(Constants.Colors.background.ignoresSafeArea())
            .navigationTitle(L10n.contactsTitle)
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $showAddContact) {
                AddEditContactView(
                    viewModel: ContactFormViewModel(),
                    onSave: { newContact in
                        viewModel.contacts.append(newContact)
                    },
                    isEditing: false
                )
            }
        }
    }
}
