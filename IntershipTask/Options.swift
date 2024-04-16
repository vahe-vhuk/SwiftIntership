//
//  Options.swift
//  IntershipTask
//
//  Created by Picsart Academy on 16.04.24.
//

import Foundation
import SwiftUI

struct Options {
    var count: Int = 0
    var dict: Dictionary<Int, CGSize> = [:]
    
    var bw = UIScreen.main.bounds.width - 35
    var bh = UIScreen.main.bounds.height - 130
    
    mutating func update() {
        dict.removeAll()
        for i in 1...count {
            dict[i] = CGSize(width: bw, height: bh / CGFloat(count))
        }
    }
}
