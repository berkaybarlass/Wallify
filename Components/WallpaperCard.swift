//
//  WallpaperCard.swift
//  Wallify
//
//  Created by BERKAY BARLAS on 27.11.2023.
//

import SwiftUI

struct WallpaperCard: View {
    let image: Image
    let size: CGFloat
    var body: some View {
        VStack {
            image
                .resizable()
                .frame(width: size, height: 200 * (size / 210))
                .cornerRadius(20.0)

            Text("Three Lux")
                .font(.title3)
                .fontWeight(.medium)
        }
            .frame(width: size)
            .padding()
            .background(Colors.smallWpCardBg)
            .cornerRadius(20.0)
    }
}
