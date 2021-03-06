//
//  SearchIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class SearchIcon: UIView {
    
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
        let scaleFactor = height * 0.7
        let path = UIBezierPath(ovalIn: CGRect(x: 0,
                                               y: 0,
                                               width: scaleFactor,
                                               height: scaleFactor))
        
        let pathBounds = path.bounds.width / 1.175
        
        let lineHeightInset: CGFloat = height * 0.1
        path.move(to: CGPoint(x: pathBounds,
                              y: pathBounds))
        
        path.addLine(to: CGPoint(x: height - lineHeightInset,
                                 y: height - lineHeightInset))
        
        iconLayer.path = path.cgPath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(iconLayer)
    }
    
}
