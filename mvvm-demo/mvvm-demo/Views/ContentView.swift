//
//  ContentView.swift
//  mvvm-demo
//
//  Created by PoKai Huang on 2022-02-06.
//

import SwiftUI

struct ContentView: View {
    
    var model = RecipeModel()
    
    var body: some View {
        
        List(model.recipes) { r in
            
            VStack(alignment: .leading, spacing: 3.0){
                Text(r.name)
                    .font(.title)
                Text(r.cuisine)
                    
                    
                    
                    
                    
                    
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
