//
//  ColorCircle.swift
//  TraficLight
//
//  Created by Roman on 14.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    var color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 5)
            .opacity(1)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red)
    }
}
