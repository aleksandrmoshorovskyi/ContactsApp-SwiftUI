//
//  ContactFormViewModel.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

import SwiftUI

@MainActor
class ContactFormViewModel: ObservableObject {
    
    enum Mode {
        case add
        case edit(Contact)
    }
    
    // MARK: - Published Fields
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var phoneNumber: String = ""
    @Published var email: String = ""
    
    // MARK: - Properties
    let mode: Mode

    var isSaveEnabled: Bool {
        !firstName.isEmpty ||
        !lastName.isEmpty ||
        !phoneNumber.isEmpty ||
        !email.isEmpty
    }
    
    // MARK: - Init
    init(mode: Mode) {
        self.mode = mode

        if case let .edit(contact) = mode {
            self.firstName = contact.firstName
            self.lastName = contact.lastName
            self.phoneNumber = contact.phoneNumber
            self.email = contact.email
        }
    }

    // MARK: - Actions
    /*
    func buildContact() -> Contact {
        Contact(name: "\(firstName) \(lastName)".trimmingCharacters(in: .whitespaces))
    }
     */
}
