//
//  VideoPage.swift
//  Pompam
//
//  Created by hendra on 01/04/24.
//

import SwiftUI

struct VideoPage: View {
    @State private var showingSheet = true
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "info.circle.fill")
                    .font(.title)
                    .padding()
            }
            Image("Logo")
                .resizable()
            Button("Next")  {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet, content: {
                VideoSheetView()
                    .presentationDetents([.height(200)])
                    .presentationCornerRadius(50)
            })
            
        }
    }
}

#Preview {
    VideoPage()
}
