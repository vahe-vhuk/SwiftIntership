//
//  HelperFunctions.swift
//  IntershipTask
//
//  Created by Picsart Academy on 18.04.24.
//

import Foundation
import SwiftUI


enum UnitSize {
    case extra
    case big
    case medium
    case small
    case none
}


struct Info: Identifiable, Decodable {
    var id: Int
    var sizes: [Int]
    var cords: [[Int]]
}


func sizeValue(size: UnitSize) -> (width: CGFloat, height: CGFloat) {
    let s: CGFloat = UIScreen.main.bounds.width * 0.82
    
    switch size {
    case .big, .extra:
        return (s + 18, size == .extra ? UIScreen.main.bounds.height * 0.82 : s)
    case .medium:
        return (s * 0.5 + 6, s * 0.5)
    case .small:
        return (s * 0.25, s * 0.25)
    case .none:
        return (0, 0)
    }
}


func sizeFromInt(size: Int) -> UnitSize {
    switch size {
    case 1:
        return .small
    case 2:
        return .medium
    case 3:
        return .big
    case 4:
        return .extra
    default:
        return .none
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

