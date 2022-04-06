//
//  Networking.swift
//  Crypto Mining TroubleShooter
//
//  Created by Deniz Donmezer on 2022-04-03.
//

import Foundation


// API Model
struct EthereumPrice: Codable {
    let usd: Double
    
    enum CodingKeys: String, CodingKey {
        case usd = "USD"
    }
}
