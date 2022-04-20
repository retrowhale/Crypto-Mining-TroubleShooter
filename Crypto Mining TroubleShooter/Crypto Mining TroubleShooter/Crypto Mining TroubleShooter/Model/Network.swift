//
//  EthereumData.swift
//  Crypto Mining Trouble Shooter (UIKit)
//
//  Created by Deniz Donmezer on 2022-04-01.
//

import Foundation
import UIKit



struct ApiData: Codable {
    let usd: Double
    
    enum CodingKeys: String, CodingKey {
        case usd = "USD"
    }
}





