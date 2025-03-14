//
//  Colour-Theme.swift
//  Moonshot
//
//  Created by Omolemo Mashigo on 2025/03/14.
//

import SwiftUI

extension ShapeStyle where Self == Color{ //extend ShapeStyle where its being used as a Color
    static var darkBackground: Color{
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color{
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}
