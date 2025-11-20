//
//  FormRow.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

//import SwiftUI
//
//struct FormRow: View {
//    let title: String
//    @Binding var text: String
//    var keyboardType: UIKeyboardType = .default
//    
//    @State private var isFocused: Bool = false
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing: 4) {
//            Text(title)
//                .font(.caption)
//                .foregroundColor(isFocused ? Constants.Colors.accent : Constants.Colors.secondaryText)
//            
//            TextField(title, text: $text, onEditingChanged: { editing in
//                isFocused = editing
//            })
//            .keyboardType(keyboardType)
//            .textFieldStyle(.roundedBorder)
//        }
//        .padding(.vertical, 4)
//    }
//}

import SwiftUI

struct FormRow2: View {
    let title: String
    let placeholder: String
    @Binding var text: String

    @FocusState private var isFocused: Bool

    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(isFocused ? .blue : .secondary)

            Spacer()

            TextField(placeholder, text: $text)
                .multilineTextAlignment(.trailing)
                .focused($isFocused)
                .foregroundColor(.primary)
        }
        .padding(.vertical, 12)
        .background(
            VStack {
                Spacer()
                Divider()
            }
        )
    }
}
