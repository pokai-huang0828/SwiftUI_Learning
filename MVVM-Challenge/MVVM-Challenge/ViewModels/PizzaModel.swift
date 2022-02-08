//
//  PizzaModel.swift
//  MVVM-Challenge
//
//  Created by PoKai Huang on 2022-02-07.
//

import Foundation

class PizzaModel: ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init() {
        
        let pizza1 = Pizza()
        pizza1.name = "Meat Lovers"
        pizza1.topping1 = "Pepperoni"
        pizza1.topping2 = "Bacon"
        pizza1.topping3 = "Sausage"
        
        pizzas.append(pizza1)
        
        
        let pizza2 = Pizza()
        pizza2.name = "Deluxe"
        pizza2.topping1 = "Pepperoni"
        pizza2.topping2 = "Mushroom"
        pizza2.topping3 = "Green Peppers"
                
        pizzas.append(pizza2)
                
        
        let pizza3 = Pizza()
        pizza3.name = "Hawaiian"
        pizza3.topping1 = "Ham"
        pizza3.topping2 = "Bacon"
        pizza3.topping3 = "Pineapple"
                
        pizzas.append(pizza3)
        
    }
    
    func addPineapple() {
        for i in 0..<pizzas.count {
            pizzas[i].topping1 = "Pineapple"
        }
        print("Added pineapples")
        
        for j in 0..<pizzas.count {
            print(pizzas[j].topping1)
        }
        
    }
    
}
