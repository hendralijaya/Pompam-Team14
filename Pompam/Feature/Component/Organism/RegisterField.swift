//
//  RegisterField.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct RegisterField: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 16) {
            InputForm(labelText: "First Name", labelImage: "", placeholder: "Enter your First Name", inputText: $firstName, isSecure: false)
            InputForm(labelText: "Last Name", labelImage: "", placeholder: "Enter your Last Name", inputText: $lastName, isSecure: false)
            InputForm(labelText: "Email", labelImage: "", placeholder: "Enter your Email", inputText: $email, isSecure: false)
            InputForm(labelText: "Password", labelImage: "", placeholder: "Enter your Password", inputText: $password, isSecure: true)
            VStack(spacing: 8) {
                CustomButton()
                .padding([.horizontal, .top])
                HStack {
                    Text("Already have an account?")
                        .font(.caption)
                    Text("Sign In")
                        .foregroundColor(.main)
                        .font(.caption)
                }
            }
        }
    }
}

#Preview {
    RegisterField()
}
