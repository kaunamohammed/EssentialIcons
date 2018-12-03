//
//  PaperPlaneIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 03/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class PaperPlaneIcon: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let planeLayer = CAShapeLayer()
        planeLayer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        planeLayer.fillColor = UIColor.clear.cgColor
        planeLayer.lineWidth = 1
        planeLayer.lineJoin = .miter
        
        let height = rect.size.height
        let width = rect.size.width
        let halfHeight = height / 2
        let halfWidth = width / 2
        
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: halfWidth, y: 0))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.move(to: CGPoint(x: halfWidth, y: height))
        path.addLine(to: CGPoint(x: halfWidth, y: halfHeight))
        
        planeLayer.path = path
        layer.addSublayer(planeLayer)
        transform = CGAffineTransform(rotationAngle: .pi / 4)
    }
    
}
