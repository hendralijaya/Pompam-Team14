//
//  LoginPage.swift
//  Pompam
//
//  Created by hendra on 31/03/24.
//

import SwiftUI

struct LoginPage: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoading: Bool = false
    
    var body: some View {
        LoginTemplate(email: $email, password: $password, isLoading: $isLoading)
    }
}

#Preview {
    LoginPage()
}
