//
//  ContentView.swift
//  IntershipTaskTest
//
//  Created by Picsart Academy on 16.04.24.
//

import SwiftUI
import SwiftUI


// Main ContentView
struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Template(count: $count)
            
            Spacer()
            
            Controller(count: $count)
        }
    }
}





#Preview {
    ContentView()
}
