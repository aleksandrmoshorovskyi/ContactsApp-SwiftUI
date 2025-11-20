//
//  FormRow.swift
//  ContactsApp
//
//  Created by Aleksandr Moroshovskyi on 20.11.2025.
//

import SwiftUI

struct FormRow2: View {
    let title: String
    let placeholder: String
    @Binding var text: String

    @FocusState private var isFocused: Bool
    
    static let titleWidth: CGFloat = 120

    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center, spacing: Constants.Layout.spacing / 2) {
                Text(title)
                    .foregroundColor(isFocused ? Constants.Colors.accent : Constants.Colors.primaryText)
                    .font(.system(size: 14))
                    .frame(width: FormRow2.titleWidth, alignment: .leading)
                
                TextField(placeholder, text: $text)
                    .focused($isFocused)
                    .foregroundColor(Constants.Colors.primaryText)
                    .multilineTextAlignment(.leading)
            }
            .padding(.vertical, Constants.Layout.spacing / 2)
            .padding(.horizontal, 0)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(isFocused ? Constants.Colors.accent : Constants.Colors.placeholder)
                .edgesIgnoringSafeArea(.horizontal)
        }
        .frame(maxWidth: .infinity)
    }
}
