//
//  RegisterTemplate.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct RegisterTemplate: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.clear)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.main, Color.darkBluePompam]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width: .infinity, height: .infinity)
            VStack(alignment: .leading, spacing: 8) {
                Image("Logo")
                    .resizable()
                    .frame(width: 160, height: 160, alignment: .leading)
                Text("Create Your Account")
                    .foregroundColor(.second)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                Text("Join us by creating your account below")
                    .foregroundColor(.second)
                    .font(.headline)
                    .fontWeight(.medium)
                    .padding(.horizontal)
                Spacer()
                VStack {
                    RegisterField()
                }
                .padding(.vertical, 64)
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
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    RegisterTemplate()
}
