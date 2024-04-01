//
//  LoginTemplate.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct LoginTemplate: View {
    
    @EnvironmentObject private var authDataStore: AuthDataStore
    
    @Binding var email: String
    @Binding var password: String
    @Binding var isLoading: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.main, Color.darkBluePompam]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width: .infinity, height: .infinity)
            HStack (alignment: .center) {
                VStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 320, height: 320)
                    Text("Welcome Back!")
                        .foregroundColor(.second)
                        .font(.title)
                        .fontWeight(.semibold)
                    Text("Please sign in to access your account")
                        .foregroundColor(.second)
                        .font(.headline)
                        .fontWeight(.medium)
                    Spacer()
                    VStack {
                        LoginField(email: $email, password: $password, login: { email, password in 
                            Task {
                                print("check here")
                                do {
                                    try await authDataStore.login(email: email, password: password)
                                } catch {
                                    print(error.localizedDescription)
                                }
                            }
                        })
                    }
                    .padding([.vertical], 48)
                    .background()
                    .clipShape(
                        .rect(
                                topLeadingRadius: 50,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 50
                        )
                    )
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    LoginTemplate(
        email: .constant(""),
        password: .constant(""),
        isLoading: .constant(false))
}
