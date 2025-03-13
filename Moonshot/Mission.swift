//
//  Mission.swift
//  Moonshot
//
//  Created by Omolemo Mashigo on 2025/03/13.
//

import Foundation

struct Mission: Codable, Identifiable{
    struct Crew: Codable{
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [Crew]
    let description: String
    
    var displayName: String{
        "Apollo \(id)"
    }
    
    var image: String{
        "apollo\(id)"
    }
}


