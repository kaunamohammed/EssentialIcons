//
//  BookmarkIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class BookmarkIcon: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let saveIconLayer = CAShapeLayer()
        saveIconLayer.lineWidth = 1
        saveIconLayer.strokeColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).cgColor
        saveIconLayer.fillColor = UIColor.clear.cgColor
        saveIconLayer.lineJoin = .round
        
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
        saveIconLayer.path = path
        
        layer.addSublayer(saveIconLayer)
    }
}
