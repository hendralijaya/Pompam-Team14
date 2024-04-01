//
//  HomeView.swift
//  Pompam
//
//  Created by hendra on 01/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Selamat Pagi, Bobby!")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                    Image(systemName: "bell.fill")
                        .renderingMode(.template)
                        .foregroundColor(.third)
                        .font(.title2)
                }
                .frame(width: .infinity, height: 64, alignment: .leading)
                .padding(.horizontal, 16)

            }            
            VStack(alignment: .leading) {
                Text("Top Learner Minggu Ini")
                    .padding(.horizontal, 16)
                VStack(alignment: .center) {
                    HStack(alignment: .center) {
                        VStack(alignment: .center) {
                            Image("Logo")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(.white)
                                        .shadow(radius: 4, x: 0, y: 4)
                                )
                            Text("Nama")
                        }
                        Spacer()
                        VStack {
                            Image("Logo")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(.white)
                                        .shadow(radius: 4, x: 0, y: 4)
                                )
                            Text("Nama")
                        }
                        Spacer()
                        VStack {
                            Image("Logo")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(.white)
                                        .shadow(radius: 4, x: 0, y: 4)
                                )
                            Text("Nama")
                        }
                        Spacer()
                        VStack {
                            Image("Logo")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(.white)
                                        .shadow(radius: 4, x: 0, y: 4)
                                )
                            Text("Nama")
                        }
                        Spacer()
                        VStack {
                            Image("Logo")
                                .resizable()
                                .frame(width: 48, height: 48, alignment: .center)
                                .background(
                                    Circle()
                                        .fill(.white)
                                        .shadow(radius: 4, x: 0, y: 4)
                                )
                            Text("Nama")
                        }
                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 16)
                Text("Lanjutkan")
                    .padding(.horizontal, 16)
                HStack {
                    Image("Logo")
                        .resizable()
                        .frame(width: 140, height: 140)
                    VStack(alignment: .leading) {
                        Text("Observation Skill")
                            .font(.headline)
                        Text("aaaaaaaaaaaaaajsandjasndjasdnkasmdnakdnskansdnajkdnsajkaaaaaasabdhasdsadhasbdhabdhsabhadbhabshdabshsabhdabshdabh")
                            .font(.subheadline)
                            .lineLimit(4)
                        Text("00:35/02:42")
                            .font(.footnote)
                            .foregroundColor(.third)
                        Button("Continue") {
                            print("done")
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 4)
                        .frame(maxWidth: .infinity)
                        .background(
                            Capsule()
                                .fill(.black)
                        )
                    }
                    .padding([.horizontal, .vertical], 8)
                    .frame(width: 140, height: 140)
                }
                .background(
                    Rectangle()
                        .fill(.white)
                        .cornerRadius(10)
                        .shadow(radius: 4, y: 4)
                )
                .padding(.horizontal, 16)
                
                Text("Stage 1")
                    .padding(.horizontal, 16)
                ScrollView(.horizontal) {
                    HStack(spacing: 16) {
                        VStack(alignment: .leading) {
                            Image("Logo")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(10)
                            Text("Observation Skill")
                            Text("Stage 1-1")
                        }
                        .frame(width: 320, height: 240)
                        .background(.gray)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 10,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 10
                            )
                        )
                        VStack(alignment: .leading) {
                            Image("Logo")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(10)
                            Text("Observation Skill")
                            Text("Stage 1-1")
                        }
                        .frame(width: 320, height: 240)
                        .background(.gray)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 10,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 10
                            )
                        )
                    }
                }
                .padding(.leading, 16)
                Text("Stage 2")
                    .padding(.horizontal, 16)
                ScrollView(.horizontal) {
                    HStack(spacing: 16) {
                        VStack(alignment: .leading) {
                            Image("Logo")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(10)
                            Text("Observation Skill")
                            Text("Stage 1-1")
                        }
                        .frame(width: 320, height: 240)
                        .background(.gray)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 10,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 10
                            )
                        )
                        VStack(alignment: .leading) {
                            Image("Logo")
                                .resizable()
                                .frame(width: 320, height: 180)
                                .cornerRadius(10)
                            Text("Observation Skill")
                            Text("Stage 1-1")
                        }
                        .frame(width: 320, height: 240)
                        .background(.gray)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 10,
                                bottomLeadingRadius: 10,
                                bottomTrailingRadius: 10,
                                topTrailingRadius: 10
                            )
                        )
                    }
                }
                .padding(.leading, 16)
            }
        }
    }
}

#Preview {
    HomeView()
}

