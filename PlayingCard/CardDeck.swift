//
//  CardDeck.swift
//  PlayingCard
//
//  Created by mac on 6/10/20.
//  Copyright © 2020 tanacom limited. All rights reserved.
//

import Foundation

struct CardDeck{
    
    private(set) var cards = [CardPlay]()
    
    
    init(){
        
        for suit in CardPlay.Suit.all{
            
            for rank in CardPlay.Rank.all{
                cards.append(CardPlay(suit: suit, rank: rank))
            }
            
        }
        
    
    }
    

   mutating func draw() -> CardPlay?{
        
        if cards.count > 0{
            return cards.remove(at: cards.count.arc4random)
            
        }
        else{
            return nil
        }
        
    }
}


extension Int {

var arc4random : Int{
    
    if self > 0 {
    return Int(arc4random_uniform(UInt32(self)))
    }
    else if self < 0 {
        
           return  -Int(arc4random_uniform(UInt32(abs(self))))
    }
    else{
        return 0
    }
        
}
}
