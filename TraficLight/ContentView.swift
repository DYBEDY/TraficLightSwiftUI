//
//  ContentView.swift
//  TraficLight
//
//  Created by Roman on 14.02.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var redOpscity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 30.0) {
                ColorCircle(color: .red, opacity: redOpscity)
                ColorCircle(color: .yellow, opacity: yellowOpacity)
                ColorCircle(color: .green, opacity: greenOpacity)
                Spacer()
                
                Button {
                    buttonTitle = "RESUME"
                    switch currentLight {
                    case .red:
                        greenOpacity = 0.3
                        redOpscity = 1
                        currentLight = .yellow
                    case .yellow:
                        redOpscity = 0.3
                        yellowOpacity = 1
                        currentLight = .green
                    case .green:
                        greenOpacity = 1
                        yellowOpacity = 0.3
                        currentLight = .red
                    }
                } label: {
                    Text(buttonTitle)
                        .font(.caption)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                        Capsule()
                            .stroke(Color.white, lineWidth: 3.0)
                    )
                }
                .padding()
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
