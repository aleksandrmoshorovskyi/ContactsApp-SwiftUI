//
//  FormRow.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

import SwiftUI

struct FormRow: View {
    let title: String
    @Binding var text: String
    @FocusState var isFocused: Bool
    
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 16, verticalSpacing: 12) {

            GridRow {
                Text(title)
                    .foregroundColor(isFocused ? .blue : .gray)
                    .frame(maxWidth: .infinity, alignment: .leading)

                TextField(title, text: $text)
                    .focused($isFocused)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
            }

            Rectangle()
                .frame(height: 1)
                .foregroundColor(isFocused ? .blue : .gray.opacity(0.3))
                .gridCellUnsizedAxes(.horizontal)
        }
        .padding(.horizontal, 16)
    }
}
