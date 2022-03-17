//
//  BundleExtension.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate file \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to convert url to data")
        }
        
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        return decodedData
    }
}
