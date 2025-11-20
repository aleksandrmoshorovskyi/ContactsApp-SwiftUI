//
//  ContactFormView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

import SwiftUI

struct ContactFormView2: View {

    @Environment(\.dismiss) private var dismiss
    @StateObject var viewModel: ContactFormViewModel

    @FocusState private var focusedField: Field?

    enum Field {
        case firstName, lastName, phoneNumber, email
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    profileIcon
                }

                VStack(spacing: 0) {

                    FormRow2(
                        title: "First Name",
                        placeholder: "First Name",
                        text: $viewModel.firstName
                    )

                    FormRow2(
                        title: "Last Name",
                        placeholder: "Last Name",
                        text: $viewModel.lastName
                    )

                    FormRow2(
                        title: "Phone number",
                        placeholder: "Phone number",
                        text: $viewModel.phoneNumber
                    )

                    FormRow2(
                        title: "Email",
                        placeholder: "Email",
                        text: $viewModel.email
                    )
                }
                .background(Color(.systemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
            }
            .navigationTitle(navTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }

                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        // handle save
                        dismiss()
                    }
                    .disabled(!viewModel.isSaveEnabled)
                }
            }
        }
    }

    // MARK: - Subviews

    private var profileIcon: some View {
        VStack {
            Image(systemName: Constants.Images.avatar)
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.gray)

            Text("Add Photo")
                .font(.footnote)
                .foregroundColor(.blue)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
    }

    private func isActive(_ field: Field) -> Bool {
        focusedField == field
    }

    private var navTitle: String {
        switch viewModel.mode {
        case .add:
            return "New Contact"
        case let .edit(contact):
            return contact.firstName
        }
    }
}
