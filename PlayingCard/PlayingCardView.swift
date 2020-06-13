//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by mac on 6/13/20.
//  Copyright © 2020 tanacom limited. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
//        if let context = UIGraphicsGetCurrentContext(){
//
//            context.addArc(center: CGPoint(x:bounds.midX,y:bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//
//            context.setLineWidth(5.0)
//
//            UIColor.green.setFill()
//
//            UIColor.red.setStroke()
//
//            context.strokePath()
//
//            context.fillPath()
//
//        }
        
        
        let path = UIBezierPath()
        
        path.addArc(withCenter: CGPoint(x:bounds.midX,y:bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
                 
        path.lineWidth = 5.0
        
        UIColor.green.setFill()
                 
        UIColor.red.setStroke()
        
        path.stroke()
        
        path.fill()
        
        
    }
    

}
