//
//  Template.swift
//  IntershipTask
//
//  Created by Picsart Academy on 16.04.24.
//

import Foundation
import SwiftUI


// Template view to display blocks
struct Template: View {
    @Binding var count: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if count == 1 {
                HBlockStack(min: 1, max: 1, size: .landscape)
            }
            else if count == 2 {
                HBlockStack(min: 1, max: 1, size: .big)
                HBlockStack(min: 2, max: 2, size: .big)
            }
            else if count == 3 {
                HBlockStack(min: 1, max: 1, size: .big)
                HBlockStack(min: 2, max: 3, size: .medium)
            }
            else if count == 4 {
                HBlockStack(min: 1, max: 1, size: .big)
                HBlockStack(min: 2, max: 3, size: .medium)
                HBlockStack(min: 4, max: 4, size: .medium)
            }
            else if count == 5 {
                HBlockStack(min: 1, max: 1, size: .big)
                HBlockStack(min: 2, max: 3, size: .medium)
                HBlockStack(min: 4, max: 5, size: .medium)
            }
            else if count == 6 {
                HBlockStack(min: 1, max: 2, size: .medium)
                HBlockStack(min: 3, max: 4, size: .medium)
                HBlockStack(min: 5, max: 6, size: .medium)
            }
            else if count == 7 {
                HBlockStack(min: 1, max: 2, size: .medium)
                HBlockStack(min: 3, max: 4, size: .medium)
                HBlockStack(min: 5, max: 6, size: .medium)
                HBlockStack(min: 7, max: 7, size: .small)
            }
            else if count == 8 {
                HBlockStack(min: 1, max: 2, size: .medium)
                HBlockStack(min: 3, max: 4, size: .medium)
                HBlockStack(min: 5, max: 6, size: .medium)
                HBlockStack(min: 7, max: 8, size: .small)
            }
            else if count == 9 {
                HBlockStack(min: 1, max: 1, size: .big)
                HBlockStack(min: 2, max: 3, size: .medium)
                HBlockStack(min: 4, max: 7, size: .small)
                HBlockStack(min: 8, max: 9, size: .small)
            }
            else if count == 10 {
                HBlockStack(min: 1, max: 1, size: .big)
                HBlockStack(min: 2, max: 3, size: .medium)
                HStack(spacing: 0) {
                    HBlockStack(min: 4, max: 5, size: .small)
                    HBlockStack(min: 8, max: 9, size: .small)
                }
                HStack(spacing: 0) {
                    HBlockStack(min: 6, max: 7, size: .small)
                    HBlockStack(min: 10, max: 10, size: .small)
                }
            }
        }
        .onTapGesture {
            if count > 0 {
                count -= 1
            }
        }
    }
}

