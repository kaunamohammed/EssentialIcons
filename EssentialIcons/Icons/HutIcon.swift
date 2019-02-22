//
//  HutIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class HutIcon: UIView {
    
    public var color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
        didSet {
            iconLayer.strokeColor = color.cgColor
            setNeedsDisplay()
        }
    }
    
    public var lineWidth: CGFloat = 1 {
        didSet {
            iconLayer.lineWidth = lineWidth
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
        
        let factor = width / 2
        
        let path = CGMutablePath()
        
        // hut
        path.move(to: CGPoint(x: factor + 5, y: 0))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: factor - 5, y: 0))
        
        let offSetToCenter = height * 0.035
        let doorWidth = height * 0.1
        let doorHeight = height * 0.2
        let doorPosition = rect.midY - offSetToCenter
        
        // door
        path.move(to: CGPoint(x: doorPosition, y: height))
        path.addLine(to: CGPoint(x: doorPosition, y: height - doorHeight))
        path.addLine(to: CGPoint(x: doorPosition + doorWidth, y: height - doorHeight))
        path.addLine(to: CGPoint(x: doorPosition + doorWidth, y: height))
        
        iconLayer.path = path
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(iconLayer)
    }
    
}
