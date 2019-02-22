//
//  HeartIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 05/01/2019.
//  Copyright © 2019 Kauna Mohammed. All rights reserved.
//

import UIKit

class HeartIcon: UIView {
    
    public var lineWidth: CGFloat = 1 {
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
    
    lazy var iconLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.clear.cgColor
        return layer
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let height = rect.size.height
        let width = rect.size.width
        let halfWidth = width / 2
        let halfHeight = height / 2
        let quarterHeight = height / 4
        
        let cutIn: CGFloat = height * 0.27
        let xInset: CGFloat = height * 0.125
        let bottomPadding = height - quarterHeight
        
        
        let bezierPath = UIBezierPath()
        
        let cp1 = CGPoint(x: xInset, y: 0)
        let cp2 = CGPoint(x: width - xInset, y: 0)
        
        
        bezierPath.move(to: CGPoint(x: halfWidth, y: cutIn))
        let leftSide = CGPoint(x: halfWidth, y: bottomPadding)
        bezierPath.addCurve(to: leftSide,
                            controlPoint1: cp1,
                            controlPoint2: CGPoint(x: xInset, y: halfHeight))
        
        
        bezierPath.move(to: CGPoint(x: halfWidth, y: cutIn))
        let rightSide = CGPoint(x: halfWidth, y: bottomPadding)
        bezierPath.addCurve(to: rightSide,
                            controlPoint1: cp2,
                            controlPoint2: CGPoint(x: width - xInset, y: halfHeight))
        
        iconLayer.path = bezierPath.cgPath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(iconLayer)
    }
    
}
