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
    var keyboardType: UIKeyboardType = .default
    
    @State private var isFocused: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(isFocused ? Constants.Colors.accent : Constants.Colors.secondaryText)
            
            TextField(title, text: $text, onEditingChanged: { editing in
                isFocused = editing
            })
            .keyboardType(keyboardType)
            .textFieldStyle(.roundedBorder)
        }
        .padding(.vertical, 4)
    }
}
