//
//  RecipeModel.swift
//  mvvm-demo
//
//  Created by PoKai Huang on 2022-02-06.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create some dummy recipe data
        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        
    }
    
    func addRecipe() {
        recipes.append(Recipe(name: "Burger", cuisine: "Amarican"))
        print("New recipe added")
    }
}
