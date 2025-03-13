//
//  ContentView.swift
//  Moonshot
//
//  Created by Omolemo Mashigo on 2025/03/11.
//

import SwiftUI

struct User: Codable{
    let name: String
    let address: Address
}

struct Address: Codable{
    let street: String
    let city: String
}


struct ContentView: View {
    
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
