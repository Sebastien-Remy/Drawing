//
//  ContentView.swift
//  Drawing
//
//  Created by Sebastien REMY on 15/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    struct ColorCyclingCircle: View {
        var amount = 0.0
        var steps = 100

        @State private var colorCycle = 0.0
        
        var body: some View {
            ZStack {
                ForEach(0..<steps) { value in
                    Circle()
                        .inset(by: CGFloat(value))
//                        .strokeBorder(self.color(for: value, brightness: 1), lineWidth: 2)
                    .strokeBorder(LinearGradient(gradient: Gradient(colors: [
                        self.color(for: value, brightness: 1),
                        self.color(for: value, brightness: 0.5)
                    ]), startPoint: .top, endPoint: .bottom), lineWidth: 2)
                }
            }
            // Accelerate drawing with drawing group
            .drawingGroup()
        }

        func color(for value: Int, brightness: Double) -> Color {
            var targetHue = Double(value) / Double(self.steps) + self.amount

            if targetHue > 1 {
                targetHue -= 1
            }

            return Color(hue: targetHue, saturation: 1, brightness: brightness)
        }
    }
    
    @State private var colorCycle = 0.0

   var body: some View {
       VStack {
           ColorCyclingCircle(amount: self.colorCycle)
               .frame(width: 300, height: 300)

           Slider(value: $colorCycle)
       }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
