//
//  CustomButton.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Button {
            
        } label: {
            CustomLabel(labelText: "Sign In", labelImage: "")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
                .foregroundColor(.second)
                .background(Color.main)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    CustomButton()
}
