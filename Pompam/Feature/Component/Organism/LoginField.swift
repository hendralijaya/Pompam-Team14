//
//  LoginField.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct LoginField: View {
    @Binding var email: String
    @Binding var password: String
    var login: (String, String) -> Void
    
    var body: some View {
        VStack {
            VStack (spacing: 16){
                InputForm(labelText: "Email", labelImage: "", placeholder: "Enter your Email", inputText: $email, isSecure: false)
                InputForm(labelText: "Password", labelImage: "", placeholder: "Enter your Password", inputText: $password, isSecure: true)
            }
            Text("Forgot your password?")
                .foregroundColor(Color.main)
                .font(.caption2)
                .padding(.horizontal)
                .padding(.vertical, 4)
                .frame(maxWidth: .infinity, alignment: .trailing)
            VStack(spacing: 8) {
                Button(action: {
                    login(email, password)
                }) {
                    CustomButton()
                }
                .padding([.horizontal, .top])
                HStack {
                    Text("Don't have an account?")
                        .font(.caption)
                    Text("Sign Up")
                        .foregroundColor(.main)
                        .font(.caption)
                }
            }
        }
    }
}

#Preview {
    LoginField(email: .constant(""), password: .constant(""), login: { email, password in
        print("check")
    })
}
