//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Omolemo Mashigo on 2025/03/13.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd" //zero-leading months
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loadedData
        
    }
}
