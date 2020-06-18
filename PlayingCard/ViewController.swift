//
//  ViewController.swift
//  PlayingCard
//
//  Created by mac on 6/10/20.
//  Copyright © 2020 tanacom limited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var deck = CardDeck()
    
    
    @IBOutlet weak var playingCardView: PlayingCardView!{
        
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
            
            swipe.direction = [.left, .right]
            
            playingCardView.addGestureRecognizer(swipe)
            
    
        }
        
    }
    
    
    
    
    @objc func nextCard() {
        if let card  = deck.draw() {
            playingCardView.rank = card.rank.order()
            playingCardView.suit = card.suit.rawValue
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        for _ in 1...10{
//           if let card = deck.draw(){
//                print("\(card)")
//            }
//        }
        
        
        
        
        
    }
    
    
    
    
    
    

}

