//
//  ClockIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 10/01/2019.
//  Copyright © 2019 Kauna Mohammed. All rights reserved.
//

import UIKit

class ClockIcon: UIView {
    
    public var lineWidth: CGFloat = 3 {
        didSet {
            iconLayer.lineWidth = lineWidth
            setNeedsDisplay()
        }
    }
    
    public var color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
        didSet {
            iconLayer.strokeColor = color.cgColor
            setNeedsDisplay()
        }
    }
    
    private lazy var iconLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.clear.cgColor
        return layer
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let height = rect.size.height
        let width = rect.size.width
        
        let halfHeight = height / 2
        let halfWidth = width / 2
        
        let circleHeight = height * 0.8
        let circleWidth = width * 0.8
        
        let circleX = width * 0.1
        let circleY = height * 0.1
        
        let circleRect = CGRect(x: circleX,
                                y: circleY,
                                width: circleHeight,
                                height: circleWidth)
        
        let bezierPath = UIBezierPath(ovalIn: circleRect)
        
        // hands
        
        bezierPath.move(to: CGPoint(x: halfWidth,
                                    y: circleRect.minY + (circleRect.height * 0.1)))
        
        bezierPath.addLine(to: CGPoint(x: halfWidth,
                                       y: halfHeight))
        
        bezierPath.addLine(to: CGPoint(x: circleRect.width - (circleRect.width * 0.01), y: circleRect.height - (circleRect.height * 0.2)))
        
        iconLayer.path = bezierPath.cgPath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(iconLayer)
    }
    
}
