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

struct FormRow3: View {
    let title: String
    let placeholder: String
    @Binding var text: String

    @FocusState private var isFocused: Bool
    
    static let titleWidth: CGFloat = 120

    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: 8) {
                Text(title)
                    .foregroundColor(isFocused ? .blue : .black)
                    .font(.system(size: 14))
                    .frame(width: FormRow2.titleWidth, alignment: .leading)
                
                TextField(placeholder, text: $text)
                    .focused($isFocused)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.leading)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 0) // прибираємо пустий простір
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(isFocused ? .blue : Color.gray.opacity(0.5))
                .edgesIgnoringSafeArea(.horizontal)
        }
        .frame(maxWidth: .infinity) // займає всю ширину екрану
    }
}


//struct FormRow2: View {
//    let title: String
//    let placeholder: String
//    @Binding var text: String
//
//    @FocusState private var isFocused: Bool
//
//    var body: some View {
//        HStack {
//            Text(title)
//                .foregroundColor(isFocused ? .blue : .secondary)
//
//            Spacer()
//
//            TextField(placeholder, text: $text)
//                .multilineTextAlignment(.trailing)
//                .focused($isFocused)
//                .foregroundColor(.primary)
//        }
//        .padding(.vertical, 12)
//        .background(
//            VStack {
//                Spacer()
//                Divider()
//            }
//        )
//    }
//}
