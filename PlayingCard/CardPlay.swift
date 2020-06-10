//
//  CardPlay.swift
//  PlayingCard
//
//  Created by mac on 6/10/20.
//  Copyright © 2020 tanacom limited. All rights reserved.
//

import Foundation

struct CardPlay {
    
    var suit : Suit
    
    var rank: Rank
    
    //  An enum is a Value Type and is copeid as it passed around
    //  And raw value of enum should also be unique
    enum Suit : String{
        case spades = "♠︎"
        case diamonds = "♦︎"
        case hearts = "♥︎"
        case clubs = "♣︎"
        
        
        static var all = [Suit.spades,.diamonds,.hearts,.clubs]
        
    }
    
    enum Rank{
        case ace
       
        case face(String)
        
        case numeric(Int)
        
        
        func order() -> Int {
            
            switch self{
                
            case .ace: return 1
                
            case .numeric(let pips): return pips
             
            case .face(let kind) where kind == "J": return 11
                
            case .face(let kind) where kind == "Q": return 12
                
            case .face(let kind) where kind == "K": return 13
                
            default: return 0
                
            }
        }
        
        static var all :[Rank]{
            
            var allRanks = [Rank.ace]
            
            for pips in  2...10{
                
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"),.face("Q"),.face("K")]
            
            return allRanks
        }
        
        
        
    }
    
}
