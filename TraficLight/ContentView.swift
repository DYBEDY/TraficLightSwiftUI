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
    @State private var redColor = ColorCircle(color: .red)
    @State private var yellowColor = ColorCircle(color: .yellow)
    @State private var greenColor = ColorCircle(color: .green)
    @State private var currentLight = CurrentLight.red
    
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 30.0) {
                redColor.opacity(lightIsOff)
                yellowColor.opacity(lightIsOff)
                greenColor.opacity(lightIsOff)
                Spacer()
                
                Button {
                    
                } label: {
                    Text("START")
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
           
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
