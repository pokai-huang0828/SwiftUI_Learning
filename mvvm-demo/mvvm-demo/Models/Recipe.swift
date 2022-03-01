//
//  Recipe.swift
//  mvvm-demo
//
//  Created by PoKai Huang on 2022-02-06.
//

import Foundation

struct Recipe: Identifiable /*Decodable*/ {
    
    var id:UUID?
    var name = ""
    var cuisine = ""
    
}
