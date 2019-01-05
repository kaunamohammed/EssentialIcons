//
//  IGTVIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 05/01/2019.
//  Copyright © 2019 Kauna Mohammed. All rights reserved.
//

import UIKit

class IGTVIcon: UIView {
    
    public var lineWidth: CGFloat = 1 {
        didSet { setNeedsDisplay() }
    }
    
    private lazy var iconLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.fillColor = UIColor.clear.cgColor
        layer.lineWidth = lineWidth
        return layer
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let height = rect.size.height
        let width = rect.size.width
        
        let heightScaleFactor = height * 0.8
        let widthScaleFactor = width * 0.8
        
        let newX = width * 0.1
        let newY = height * 0.1
        let tvRect = CGRect(x: newX,
                            y: newY,
                            width: widthScaleFactor,
                            height: heightScaleFactor)
        
        let halfWidth = rect.size.width / 2
        let halfHeight = rect.size.height / 2
        let paddingFromLeft = width * 0.25
        let tinyShift = width * 0.01
        let cornerRadius = min(height, width) * 0.2
        
        // tv box
        let bezierPath = UIBezierPath(roundedRect: tvRect,
                                      cornerRadius: cornerRadius)
        
        // lightning
        bezierPath.move(to: CGPoint(x: halfWidth - paddingFromLeft,
                                    y: halfHeight ))
        
        let yInset = height * 0.05
        
        bezierPath.addLine(to: CGPoint(x: halfWidth,
                                       y: halfHeight - yInset))
        
        bezierPath.addLine(to: CGPoint(x: halfWidth + tinyShift,
                                       y: halfHeight + yInset))
        
        bezierPath.addLine(to: CGPoint(x: halfWidth + paddingFromLeft,
                                       y: halfHeight))
        
        // antenna
        bezierPath.move(to: CGPoint(x: halfWidth,
                                    y: tvRect.minY))
        
        let spaceBetweenAntenna: CGFloat = height * 0.15
        bezierPath.addLine(to: CGPoint(x: halfWidth - spaceBetweenAntenna,
                                       y: -2))
        
        bezierPath.move(to: CGPoint(x: halfWidth,
                                    y: tvRect.minY))
        
        bezierPath.addLine(to: CGPoint(x: halfWidth + spaceBetweenAntenna,
                                       y: -2))
        
        iconLayer.path = bezierPath.cgPath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(iconLayer)
    }
    
}
