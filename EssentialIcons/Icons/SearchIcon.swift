//
//  SearchIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class SearchIcon: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let searchLayer = CAShapeLayer()
        searchLayer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        searchLayer.fillColor = UIColor.clear.cgColor
        searchLayer.lineWidth = 1
        searchLayer.lineJoin = .miter
        
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
        
        searchLayer.path = path.cgPath
        layer.addSublayer(searchLayer)
    }
    
}
