//
//  Block.swift
//  IntershipTask
//
//  Created by Picsart Academy on 16.04.24.
//

import Foundation
import SwiftUI



enum BlockSize {
    case big
    case medium
    case small
    case landscape
}



struct Block: View {
    var text: String
    var size: BlockSize
    
    var body: some View {
        
        let bw: CGFloat = UIScreen.main.bounds.width * 0.82
        
        var wid: CGFloat
        var hei: CGFloat
        
        switch size {
        case .big:
            wid = bw + 18
            hei = bw
        case .medium:
            wid = bw * 0.5 + 6
            hei = bw * 0.5
        case .small:
            wid = bw * 0.25
            hei = bw * 0.25
        case .landscape:
            wid = bw
            hei = UIScreen.main.bounds.height - 150
        }
        
        return Text(text)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .frame(width: wid, height: hei)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(3)
    }
}



struct HBlockStack: View {
    var min: Int
    var max: Int
    var size: BlockSize
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            ForEach(min...max, id: \.self) { i in
                Block(text: "\(i)", size: size)
            }
        }
    }
}


