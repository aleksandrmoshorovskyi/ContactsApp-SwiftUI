//
//  AddEditContactView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

/*
import SwiftUI

struct AddEditContactView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: ContactFormViewModel
    var onSave: (Contact) -> Void
    var isEditing: Bool
    
    var body: some View {
        Form {
            Section {
                FormRow(title: L10n.firstName, text: $viewModel.firstName)
                FormRow(title: L10n.lastName, text: $viewModel.lastName)
                FormRow(title: L10n.phoneNumber, text: $viewModel.phone, keyboardType: .phonePad)
                FormRow(title: L10n.email, text: $viewModel.email, keyboardType: .emailAddress)
            }
        }
        .navigationTitle(isEditing ? "\(viewModel.firstName) \(viewModel.lastName)" : L10n.newContact)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button(L10n.cancel) {
                    dismiss()
                }
            }
            ToolbarItem(placement: .confirmationAction) {
                Button(L10n.save) {
                    onSave(viewModel.contact)
                    dismiss()
                }
                .disabled(!viewModel.isValid)
            }
        }
    }
}
*/
