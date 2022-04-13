//
//  PostResponse.swift
//  Crypto Mining TroubleShooter
//
//  Created by Deniz Donmezer on 2022-04-13.
//

import Foundation


struct PostResponse : Codable {
    
    var name : String?
    var link : String?
    
    
}

struct Posts : Codable {
    
    var Objects : [PostResponse]
    
}
