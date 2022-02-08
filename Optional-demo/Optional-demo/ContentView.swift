//
//  ContentView.swift
//  Optional-demo
//
//  Created by PoKai Huang on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    @State var array:[String]?
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 15.0) {
            Button("Clear") {
                array = nil
            }
            
            Button("Add") {
                array = [String]()
                
                array?.append("Popo")
                array?.append("Elaine")
                array?.append("Joe")
                array?.append("Robin")
                array?.append("Kaly")
            }
            
            if array == nil {
                Text("Please click the add button")
                    .padding(.all, 10.0)
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(Color.red)
            }
            else {
                List(array!, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
