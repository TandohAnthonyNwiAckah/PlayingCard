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

    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10{
           if let card = deck.draw(){
                print("\(card)")
            }
        }    
    }

}

