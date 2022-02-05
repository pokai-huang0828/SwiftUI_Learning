//
//  ContentView.swift
//  Loop Demo Project
//
//  Created by PoKai Huang on 2022-02-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var number = [Int]()
    
    var body: some View {
        ZStack{
            
            List(number, id: \.self) { num in
                
                Text(String(num))
                
            }
            
            
            
            HStack(spacing: 10.0) {
                
                Button("Generate") {
                    var randNumber = 0
                    while randNumber != 7 {
                        randNumber = Int.random(in: 1...10)
                        number.append(randNumber)
                    }
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
                Button("Add + 1") {
                    if number.count == 0 {
                        return
                    }
                    for index in 0...number.count-1 {
                        
                        number[index] += 1
                    }
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                
                Button("Clear"){
                    number.removeAll()
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
            .foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
