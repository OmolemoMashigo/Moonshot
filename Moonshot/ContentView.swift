//
//  ContentView.swift
//  Moonshot
//
//  Created by Omolemo Mashigo on 2025/03/11.
//

import SwiftUI

struct ContentView: View {
    
    let astronauts: [String: Astronauts] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(missions){mission in
                        NavigationLink{
                            Text("detail view")
                        } label:{
                            VStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline )
                                    
                                    Text(mission.launchDate ?? "N/A")
                                        .font(.caption)
                                }
                                .frame(maxWidth: .infinity)
                            }
                        }
                    }
                }
            }
            .navigationTitle("MoonShot")
        }
    }
}

#Preview {
    ContentView()
}
