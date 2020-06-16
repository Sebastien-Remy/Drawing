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
//        Text("Hello World")
//        .frame(width: 300, height: 300)
//         .border(ImagePaint(image: Image("Example"), scale: 0.1), width: 30)
        
        Capsule()
        .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
        .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
