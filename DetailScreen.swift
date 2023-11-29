//
//  DetailScreen.swift
//  Wallify
//
//  Created by BERKAY BARLAS on 27.11.2023.
//

import SwiftUI

struct DetailScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack {
                Color(Colors.primaryBgColor)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Image("homePageWallpaper_1")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 300, height: 400)
                    DescriptionView()

                        .background(Colors.smallWpCardBg)
                        .cornerRadius(40.0)
                }

            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton(action: {presentationMode.wrappedValue.dismiss()}), trailing: Image("threeDot"))

    }
}


struct DescriptionView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Three Lux Color")
                .font(.title)
                .fontWeight(.bold)

            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                .lineSpacing(8.0)
                .opacity(0.6)

            HStack{
                Button(action: { }) {
                    Text("Download")
                        .foregroundColor(.white)
                        .padding(.all, 12)
                        .background(Color("Primary"))
                        .cornerRadius(20.0)
                        
                }
            }


        }
            .padding()
            .padding(.top)
            .background(Color("Bg"))
            .offset(x: 0, y: -10.0)
    }
}

struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.white)
                .padding(.all, 12)
                .background(Color.black)
                .cornerRadius(8.0)
        }
    }
}
