//
//  Unit.swift
//  IntershipTask
//
//  Created by Picsart Academy on 18.04.24.
//

import Foundation
import SwiftUI



struct Unit: View {
    @State var text: String
    @Binding var size: UnitSize
    @Binding var cord: [CGFloat]
    

    

    
    var body: some View {
        Text(text)
            .font(.title)
            .cornerRadius(10)
            .frame(width: sizeValue(size: size).width, height: sizeValue(size: size).height)
            .background(Color.blue)
            .padding(3)
            .position(x: cord[0], y: cord[1])

    }
}

