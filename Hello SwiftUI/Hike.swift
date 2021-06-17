//
//  Hike.swift
//  Hello SwiftUI
//
//  Created by Hafiza Seemab on 16/06/2021.
//

import Foundation

struct Hike {
    let name: String
    let image: String
    let miles: Double
    
    static func all() -> [Hike]{
        return [
            Hike(name: "Hike1", image: "cherry", miles: 1),
            Hike(name: "Hike2", image: "cherry", miles: 2),
            Hike(name: "Hike3", image: "cherry", miles: 3),
            Hike(name: "Hike4", image: "cherry", miles: 4),
            Hike(name: "Hike5", image: "cherry", miles: 5)
        ]
    }
}
