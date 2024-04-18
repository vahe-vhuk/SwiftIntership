//
//  Template.swift
//  IntershipTask
//
//  Created by Picsart Academy on 18.04.24.
//

import Foundation
import SwiftUI


struct Template: View {
    @Binding var count: Int
    
    @State var sizes: Array<UnitSize> = Array(repeating: .none, count: 11)
    @State var cords: Array<[CGFloat]> = Array(repeating: [0, 0], count: 11)

    var body: some View {
        ZStack {
            ForEach(0..<count+1, id: \.self) { i in
                Unit(text: "\(i + 1)", size: $sizes[i], cord: $cords[i])
                    .onTapGesture {
                        remove(i: i)
                    }
            }
        }
        .onChange(of: count) {
            updateState()
        }
    }
    
    
    func remove(i: Int) {
        print(sizes)
        
        sizes.remove(at: i)
        sizes.append(.none)
        cords.remove(at: i)
        cords.append([0, 0])
        
        updateState()
        
        count -= 1
        
    }
    

    func updateState() {
        let options: [Info] = load("Options.json")
        
        
        for i in options[count].sizes.indices {
            withAnimation(Animation.easeInOut(duration: 0.8)) {
                sizes[i] = sizeFromInt(size: options[count].sizes[i])
            }
        }
        
        let baseX: CGFloat = UIScreen.main.bounds.width * 0.06
        let baseY: CGFloat = 2 // UIScreen.main.bounds.height * 0.001
        
        var (stepX, stepY) = sizeValue(size: .small)
        
        stepX += 6
        stepY += 3
        
        for i in options[count].cords.indices {
            var (offX, offY) = sizeValue(size: sizes[i]);
            offX /= 2
            offY /= 2
            
            let factorX: CGFloat = CGFloat(options[count].cords[i][0])
            let factorY: CGFloat = CGFloat(options[count].cords[i][1])
            
            let X = baseX + stepX * factorX + offX
            let Y = baseY + stepY * factorY + offY
            
            withAnimation(Animation.easeInOut(duration: 0.8)) {
                cords[i] = [X, Y]
            }
        }
        
        
        
    }
}
