//
//  InputForm.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct InputForm: View {
    let labelText: String
    let labelImage: String
    let placeholder: String
    @Binding var inputText: String
    let isSecure: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            CustomLabel(labelText: labelText, labelImage: labelImage)
            InputField(placeholder: placeholder, inputText: $inputText, isSecure: isSecure)
        }
    }
}

#Preview {
    InputForm(labelText: "Email", labelImage: "", placeholder: "Enter your email", inputText: .constant(""), isSecure: false)
}
