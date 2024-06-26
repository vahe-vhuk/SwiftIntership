//
//  Controller.swift
//  IntershipTask
//
//  Created by Picsart Academy on 18.04.24.
//

import Foundation
import SwiftUI


struct ButtonText: View {
    @State var text: String
    @State var color: Color
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 110, height: 30)
                    .foregroundColor(color)
                    .cornerRadius(3)
            )
    }
}





struct Controller: View {
    @Binding var count: Int
    
    var body: some View {
        HStack(spacing: 100) {
            Button(action: {
                withAnimation(Animation.linear(duration: 0.3) ) {
                    if count < 10 {
                        count += 1
                    }
                }
            }) {
                ButtonText(text: "Add", color: .blue)
            }
            
            Button(action: {
                if count > 0 {
                    count -= 1
                }
            }) {
                ButtonText(text: "Remove", color: .red)
            }
        }
        .padding(.vertical, 20)
    }
}

