//
//  VideoSheetView.swift
//  Pompam
//
//  Created by hendra on 01/04/24.
//

import SwiftUI

struct VideoSheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Tes")
            Text("ASDMKASJDNASJDSANJKDNSADASDSADSANDJSANDSKADS")
            Button("Next") {
                dismiss()
            }
            .foregroundColor(.white)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .frame(maxWidth: 128)
            .background(
                Capsule()
                    .fill(Color.main)
            )
        }
    }
}

#Preview {
    VideoSheetView()
}
