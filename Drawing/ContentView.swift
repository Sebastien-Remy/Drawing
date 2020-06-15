//
//  ContentView.swift
//  Drawing
//
//  Created by Sebastien REMY on 15/06/2020.
//  Copyright © 2020 MonkeyDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
          Path { path in
             path.move(to: CGPoint(x: 200, y: 100))
             path.addLine(to: CGPoint(x: 100, y: 300))
             path.addLine(to: CGPoint(x: 300, y: 300))
             path.addLine(to: CGPoint(x: 200, y: 100))
         }
//          .fill(Color.blue)
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 10,
                                                   lineCap: .round,
                                                   lineJoin: .round))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
