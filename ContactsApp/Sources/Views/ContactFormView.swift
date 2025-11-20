//
//  ContactFormView.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

import SwiftUI

struct ContactFormView: View {

    @Environment(\.dismiss) private var dismiss
    @StateObject var viewModel: ContactFormViewModel

    @FocusState private var focusedField: Field?

    enum Field {
        case firstName, lastName, phone, email
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    profileIcon
                }

//                Section {
//                    textFieldRow(
//                        title: "First Name",
//                        text: $viewModel.firstName,
//                        field: .firstName
//                    )
//
//                    textFieldRow(
//                        title: "Last Name",
//                        text: $viewModel.lastName,
//                        field: .lastName
//                    )
//
//                    textFieldRow(
//                        title: "Phone number",
//                        text: $viewModel.phone,
//                        field: .phone
//                    )
//
//                    textFieldRow(
//                        title: "Email",
//                        text: $viewModel.email,
//                        field: .email
//                    )
//                }
                VStack(spacing: 0) {

                    FormRow(
                        title: "First Name",
                        //placeholder: "First Name",
                        text: $viewModel.firstName
                    )

                    FormRow(
                        title: "Last Name",
                        //placeholder: "Last Name",
                        text: $viewModel.lastName
                    )

                    FormRow(
                        title: "Phone number",
                        //placeholder: "Phone number",
                        text: $viewModel.phone
                    )

                    FormRow(
                        title: "Email",
                        //placeholder: "Email",
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
            Image(systemName: "person.circle.fill")
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

    private func textFieldRow(
        title: String,
        text: Binding<String>,
        field: Field
    ) -> some View {
        HStack {
            Text(title)
                .foregroundColor(isActive(field) ? .blue : .primary)

            TextField(title, text: text)
                .focused($focusedField, equals: field)
                .textFieldStyle(.plain)
        }
        .padding(.vertical, 4)
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
