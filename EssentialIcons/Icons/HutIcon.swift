//
//  HutIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class HutIcon: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let hutIconLayer = CAShapeLayer()
        hutIconLayer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        hutIconLayer.fillColor = UIColor.clear.cgColor
        hutIconLayer.lineJoin = .miter
        hutIconLayer.lineWidth = 1
        
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
        
        hutIconLayer.path = path
        
        layer.addSublayer(hutIconLayer)
    }
}
