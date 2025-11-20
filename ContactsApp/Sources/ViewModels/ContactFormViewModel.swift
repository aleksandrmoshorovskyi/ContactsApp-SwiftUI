//
//  ContactFormViewModel.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

import SwiftUI

@MainActor
class ContactFormViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var phone: String = ""
    @Published var email: String = ""
    
    var isValid: Bool {
        !firstName.isEmpty || !lastName.isEmpty || !phone.isEmpty || !email.isEmpty
    }
    
    var contact: Contact {
        Contact(firstName: firstName, lastName: lastName, phone: phone, email: email)
    }
    
    init(contact: Contact? = nil) {
        if let contact = contact {
            self.firstName = contact.firstName
            self.lastName = contact.lastName
            self.phone = contact.phone
            self.email = contact.email
        }
    }
}
