//
//  MountainPictureIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 10/01/2019.
//  Copyright © 2019 Kauna Mohammed. All rights reserved.
//

import UIKit

// - Recommended: if using as a tab bar pr navigation bar icon, recommended size is 30 x 25. All other use cases, scale accordingly.
class MountainPictureIcon: UIView {
    
    public var lineWidth: CGFloat = 1.5 {
        didSet {
            iconLayer.lineWidth = lineWidth
            setNeedsDisplay()
        }
    }
    
    public var pictureBackgroundColor: CGColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
        didSet {
            layer.backgroundColor = pictureBackgroundColor
            setNeedsDisplay()
        }
    }
    
    public var mountainColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
        didSet {
            iconLayer.fillColor = mountainColor.cgColor
            setNeedsDisplay()
        }
    }
    
    private lazy var iconLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let height = rect.size.height
        let width = rect.size.width
        
        let secondMountainPeak = height * 0.4
        let secondMountainPeak2 = width * 0.65
        
        let path = CGMutablePath()
        
        path.move(to: CGPoint(x: width * 0.2,
                              y: height - (height * 0.2)))
        
        path.addLine(to: CGPoint(x: width - (width * 0.2),
                                 y: height - (height * 0.2)))
        
        path.addLine(to: CGPoint(x: secondMountainPeak2,
                                 y: secondMountainPeak))
        
        path.addLine(to: CGPoint(x: width - (width * 0.55),
                                 y: height - (height * 0.3)))
        
        path.addLine(to: CGPoint(x: width - (width * 0.7),
                                 y: height - (height * 0.5)))
        
        path.closeSubpath()
        
        
        iconLayer.path = path
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.borderWidth = 1
        layer.cornerRadius = 5
        layer.addSublayer(iconLayer)
    }
    
}
