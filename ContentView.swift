//
//  ContentView.swift
//  Wallify
//
//  Created by BERKAY BARLAS on 26.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                TitleWallifyView()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Button(action:{}){
                            Text("All")
                                .font(.title3)
                                .fontWeight(.light)
                                .foregroundStyle(Color.black)

                        }
                        CategoryButton()
                    }
                    
                }
                
                .padding()
                Spacer()
                
            }
            
        }
        
    }
    
    
}

#Preview {
    ContentView()
}


struct TitleWallifyView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Abstract Walls")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .padding()
        }
    }
}

struct CategoryButton: View {
    var body: some View {
        Button(action:{}){
            Text("For You")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(Color.black)
        }
    }
}
