//
//  ContentView.swift
//  Drawing
//
//  Created by Sebastien REMY on 15/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var amount: CGFloat = 0.0
    
    var body: some View {
        
        //        ZStack {
        //            Image("Example")
        //
        //            Rectangle()
        //                .fill(Color.red)
        //                .blendMode(.multiply)
        //        }
        //        .frame(width: 300, height: 300)
        //        .clipped()
        
        //        Image("Example")
        //            .colorMultiply(.red)
        
        VStack {
            ZStack {
                Circle()
                    // Pure blue ≠ Color.blue
                    .fill(Color(red: 1, green: 0, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 0, green: 1, blue: 0))
                    .frame(width: 200 * amount)
                    .offset(x: 50, y: -80)
                    .blendMode(.screen)
                
                Circle()
                    .fill(Color(red: 1, green: 0, blue: 1))
                    .frame(width: 200 * amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
