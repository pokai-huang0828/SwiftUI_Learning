//
//  ContentView.swift
//  MVVM-Challenge
//
//  Created by PoKai Huang on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
    
        VStack {
            List(model.pizzas) { pizza in
                
                VStack(alignment: .leading) {
                    Text(pizza.name)
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
                HStack(spacing: 15.0){
                    Text(pizza.topping1)
                    Text(pizza.topping2)
                    Text(pizza.topping3)
                }
            }
            .opacity(0.8)
            .background(
                Image("appBG")
                    .resizable()
                    .scaledToFill())
            
            Button("Add Pineapple"){
                model.addPineapple()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
