//
//  CustomLabel.swift
//  Pompam
//
//  Created by hendra on 30/03/24.
//

import SwiftUI

struct CustomLabel: View {
    let labelText: String
    let labelImage: String
    var body: some View {
        Label(labelText, systemImage: labelImage)
            .fontWeight(.semibold)
            .padding(.horizontal)
    }
}

#Preview {
    CustomLabel(labelText: "Email", labelImage: "")
}
