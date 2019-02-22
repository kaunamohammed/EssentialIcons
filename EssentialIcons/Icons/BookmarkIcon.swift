//
//  BookmarkIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class BookmarkIcon: UIView {
    
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
    
        let path = CGMutablePath()
        
        let height = rect.size.height
        let width = rect.size.width
        
        let startingPoint = width * 0.05
        let bottomInset = height * 0.05
        let cutInset = height * 0.6 // tweak this
        
        path.move(to: CGPoint(x: startingPoint, y: startingPoint))
        path.addLine(to: CGPoint(x: startingPoint, y: height - bottomInset))
        path.addLine(to: CGPoint(x: width / 2, y: cutInset))
        path.addLine(to: CGPoint(x: width - startingPoint, y: height - bottomInset))
        path.addLine(to: CGPoint(x: width - startingPoint, y: startingPoint))
        path.addLine(to: CGPoint(x: startingPoint, y: startingPoint))
        
        iconLayer.path = path
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(iconLayer)
    }
    
}
