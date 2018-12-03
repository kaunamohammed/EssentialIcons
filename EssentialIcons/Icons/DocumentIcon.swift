//
//  DocumentIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class DocumentIcon: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let documentLayer = CAShapeLayer()
        documentLayer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        documentLayer.fillColor = UIColor.clear.cgColor
        documentLayer.lineWidth = 1
        documentLayer.lineJoin = .miter
        
        let height = rect.size.height
        let width = rect.size.width
        
        let foldInset: CGFloat = height * 0.3
        
        let path = CGMutablePath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width, y: foldInset))
        path.addLine(to: CGPoint(x: width - foldInset, y: 0))
        path.addLine(to: .zero)
        
        path.move(to: CGPoint(x: width - foldInset, y: 0))
        path.addLine(to: CGPoint(x: width - foldInset, y: foldInset))
        path.addLine(to: CGPoint(x: width, y: foldInset))
        
        documentLayer.path = path
        layer.addSublayer(documentLayer)
    }
    
}
