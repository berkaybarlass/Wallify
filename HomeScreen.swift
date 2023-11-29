//
//  HomeScreen.swift
//  Wallify
//
//  Created by BERKAY BARLAS on 27.11.2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Colors.primaryBgColor
                    .ignoresSafeArea(.all)
                VStack {
                    HeaderText()

                    VStack (alignment: .leading) {
                        VStack {
                            Text("Popular")

                                .padding(.horizontal)
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                        }
                            .padding()
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0..<4) { i in
                                    NavigationLink(destination: DetailScreen(), label: {
                                            WallpaperCard(image: Image("homePageWallpaper_\(i + 1)"), size: 210)
                                        })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)

                                }
                                    .padding(.leading)
                            }
                        }
                            .padding(.bottom)

                        VStack (alignment: .leading) {
                            Text("Best")
                                .padding(.horizontal)
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0..<4) { i in
                                    NavigationLink(destination: DetailScreen(), label: {
                                            WallpaperCard(image: Image("bestWP_\(i + 1)"), size: 210)
                                        })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)

                                }
                                    .padding(.leading)
                            }
                        }
                            .padding(.bottom)


                    }

                }

            }

        }

    }
}
