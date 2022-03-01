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
        
        // Get the path to the json file within the bundle
//        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
//
//        if let path = pathString {
//
//            // Create a url object
//            let url = URL(fileURLWithPath: path)
//
//            // Error handling
//            do {
//                // Put the code that potentially throws an error
//
//                // Create a data object with the data at the url
//                let data = try Data(contentsOf: url)
//
//                // Parse the data
//                let decoder = JSONDecoder()
//
//
//                do {
//                    let recipeData = try decoder.decode([Recipe].self, from: data)
//                    self.recipes = recipeData
//
//                }
//                catch {
//                    print(error)
//                }
//            }
//            catch {
//                // Execution will come here if an error is thrown
//                // Handle the error
//                print(error)
//            }
            
            
        }
        
    }
    
    func addRecipe() {
        recipes.append(Recipe(name: "Burger", cuisine: "Amarican"))
        print("New recipe added")
    }
}
