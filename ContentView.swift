//
//  ContentView.swift
//  Wallify
//
//  Created by BERKAY BARLAS on 26.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let categories = ["All", "Black", "Dark", "Red", "Blue"]
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                TitleWallifyView()
                    HStack {
                        CategoryButton(ButtonName: "All")
                        Spacer()
                        CategoryButton(ButtonName: "For You")
                    }
                
                    .padding()
                Spacer()
                
                VStack{
                    Image("1")
                        .resizable()
                        .frame(width: 150, height: 250)
                        .cornerRadius(20.0)
                    Text("Three Summer")
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    HStack{
                        CategoryButton(ButtonName: "Download")
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    
                }
                .frame(width: 210)
                .padding()
                .background(Color.gray)
            }

        }

    }


}

#Preview {
    HomeScreen()
}


struct TitleWallifyView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Abstract Walls")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
                .padding()
        }
    }
}

struct CategoryButton: View {
    var ButtonName : String
    var body: some View {
        Button(action: { }) {
            Text(ButtonName)
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(Color.black)
        }
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary") : Color.black.opacity(0.5))
            if (isActive) { Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}
