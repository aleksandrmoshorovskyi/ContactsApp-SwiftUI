//
//  Contact.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 30.10.2025.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var email: String
}
