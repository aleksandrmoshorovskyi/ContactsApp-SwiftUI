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
    @Published var phone: String = ""
    @Published var email: String = ""
    
    // MARK: - Properties
    let mode: Mode

    var isSaveEnabled: Bool {
        !firstName.isEmpty ||
        !lastName.isEmpty ||
        !phone.isEmpty ||
        !email.isEmpty
    }
    
    // MARK: - Init
    init(mode: Mode) {
        self.mode = mode

        if case let .edit(contact) = mode {
            self.firstName = contact.firstName
            self.lastName = contact.lastName
            self.phone = contact.phone
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

//import SwiftUI
//
//@MainActor
//class ContactFormViewModel: ObservableObject {
//
//    enum Mode {
//        case add
//        case edit(Contact)
//    }
//
//    // MARK: - Published Fields
//    @Published var firstName: String = ""
//    @Published var lastName: String = ""
//    @Published var phone: String = ""
//    @Published var email: String = ""
//
//    // MARK: - Properties
//    let mode: Mode
//
//    var isSaveEnabled: Bool {
//        !firstName.isEmpty ||
//        !lastName.isEmpty ||
//        !phone.isEmpty ||
//        !email.isEmpty
//    }
//
//    // MARK: - Init
//    init(mode: Mode) {
//        self.mode = mode
//
//        if case let .edit(contact) = mode {
//            firstName = contact.name
//            // щоб було красиво — потім додамо split на first/last
//        }
//    }
//
//    // MARK: - Actions
//    func buildContact() -> Contact {
//        Contact(name: "\(firstName) \(lastName)".trimmingCharacters(in: .whitespaces))
//    }
//}
