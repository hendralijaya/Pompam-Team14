//
//  InputField.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct CustomRoundedBorderTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
            .background(
                RoundedRectangle(cornerRadius: 8).fill(Color.white)
                    .strokeBorder(style: StrokeStyle(lineWidth: 0))
                    .shadow(color: Color.black.opacity(0.25), radius: 2, x: 0, y: 4)
            )
        
    }
}

struct InputField: View {
    let placeholder: String
    @Binding var inputText: String
    let isSecure: Bool
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $inputText)
            } else {
                TextField(placeholder, text: $inputText)
            }
        }
        .textFieldStyle(CustomRoundedBorderTextFieldStyle())
        .padding(.horizontal)
    }
}

#Preview {
    InputField(placeholder: "Enter your Email", inputText: .constant(""), isSecure: false)
}
