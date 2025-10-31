//
//  ContactsViewModel.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import SwiftUI

@MainActor
class ContactsViewModel: ObservableObject {
    @Published var contacts: [Contact] = []
    
    func addContact() {
        print("Add Contact tapped")
    }
}
