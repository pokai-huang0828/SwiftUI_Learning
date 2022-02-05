//
//  ContentView.swift
//  List Demo
//
//  Created by PoKai Huang on 2022-02-04.
//

import SwiftUI

struct ContentView: View {
    
//    var array = ["Element 1", "Element 2", "Element 3", "Element 4", "Element 5"]
//
//    var body: some View {
//
//        NavigationView {
//
//            List(array, id: \.self) { arrayElement in
//
//                NavigationLink(
//                    destination: Text("Destination"),
//                    label: {
//                        Text(arrayElement)
//                    })
//
//
//            }.navigationBarTitle(Text("My List"))
//        }
//    }
    
    var arrayD = ["Demo 1", "Demo 2", "Demo 3", "Demo 4", "Demo 5"]
    var textArray = ["Kenny", "Elaine", "Sara", "Eric", "Jenny"]
    @State var displayText = ""
    
    var body: some View {
        
        NavigationView {
            
            List(arrayD, id: \.self) { arrayDElement in
                
                NavigationLink(
                    destination: {
                        VStack{
                            
                            Text(displayText)
                            
                            Button("Tab Me!")
                            {
                                let randomIndex = Int.random(in: 0...textArray.count-1)
                                displayText = textArray[randomIndex]
                            }
                        }
                    },
                    label: {
                        Text(arrayDElement)
                    }
                )
            }.navigationBarTitle(Text("My Challenge 2"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
