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
    var body: some View {
        Button("Decode JSON"){
            let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                            "street": "555, Taylor ave",
                            "city": "NYC"
                    }
                }
                """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user = try? decoder.decode(User.self, from: data){
                print(user.address.street)
            }
        }
    }
}

#Preview {
    ContentView()
}
