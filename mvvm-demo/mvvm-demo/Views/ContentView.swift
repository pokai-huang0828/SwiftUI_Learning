//
//  ContentView.swift
//  mvvm-demo
//
//  Created by PoKai Huang on 2022-02-06.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        VStack {
            List(model.recipes) { r in
                
                VStack(alignment: .leading, spacing: 3.0){
                    Text(r.name)
                        .font(.title)
                    Text(r.cuisine)
                }
            }
            Button("Add Recipe",
                   action: {
                model.addRecipe()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
