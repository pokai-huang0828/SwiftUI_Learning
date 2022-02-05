//
//  ContentView.swift
//  ArrayPractice
//
//  Created by PoKai Huang on 2022-02-04.
//

import SwiftUI

struct Card {
    // This is for card's number
    var number = 1
    // This is for card's suit
    var suit = 1
}

struct ContentView: View {
    
    // This is to store our cards
    @State var deck = [Card]()
    
    // array contains for suit
    var suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
    
    // This is storing a string representation of previously generated number/suit combos
    @State var generatedLog = [String]()
    
    // Message for label
    @State var message = ""
    
    var body: some View {
        
        VStack(spacing: 10){
            
            Text(message)
            
            HStack(spacing: 15.0) {
                
                Button("Add Card"){
                    addCard()
                }
                
                Button("Draw a Card"){
                    drawCard()
                }
            }
        }
    }
    
    func addCard() {
        
        let randCNumber = Int.random(in: 1...13)
        let randCSuit = Int.random(in: 0...3)
        
        var newCard = Card()
        newCard.number = randCNumber
        newCard.suit = randCSuit
        
        let numberSuitString = String(newCard.number) + "/" + String(newCard.suit)
        
        if generatedLog.contains(numberSuitString) {
            
            message = "Generated duplicate card."
        }
        else {
            
            deck.append(newCard)
            
            generatedLog.append(numberSuitString)
            
            let cardName = getCardName(newCard.number)
            let cardSuit = suits[newCard.suit]
            
            message = "Generated a \(cardName) of \(cardSuit)"
        }
    }
    
    func drawCard() {
        
        if deck.count == 0 {
            message = "No cards in the dock."
        }
        else {
            let randIndex = Int.random(in: 0...deck.count-1)
            
            let randomCard = deck[randIndex]
            
            let cardName = getCardName(randomCard.number)
            let suitName = suits[randomCard.suit]
            
            message = "Drew a \(cardName) of \(suitName)"
        }
    }
    
    func getCardName(_ cardNumber:Int) -> String {
        
        if cardNumber == 1 {
            return "Ace"
        }
        else if cardNumber == 11 {
            return "Jack"
        }
        else if cardNumber == 12 {
            return "Queen"
        }
        else if cardNumber == 13 {
            return "King"
        }
        else {
            return String(cardNumber)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
