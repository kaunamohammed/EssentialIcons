//
//  ConnectedDeviceIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 10/01/2019.
//  Copyright © 2019 Kauna Mohammed. All rights reserved.
//

import UIKit

class ConnectedDeviceIcon: UIView {
    
    public var connectionStatusColor: CGColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
    
    private lazy var rectangleLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = connectionStatusColor
        layer.lineWidth = 5
        return layer
    }()
    
    private lazy var triangleLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = connectionStatusColor
        layer.lineWidth = 1.5
        return layer
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let height = rect.size.height
        let width = rect.size.width
        
        let rectanglePath = CGMutablePath()
        
        rectanglePath.move(to: CGPoint(x: width * 0.3,
                                       y: height - (height * 0.1)))
        
        rectanglePath.addLine(to: CGPoint(x: 0,
                                          y: height - (height * 0.1)))
        
        rectanglePath.addLine(to: CGPoint(x: 0,
                                          y: height - (height * 0.7)))
        
        rectanglePath.addLine(to: CGPoint(x: width,
                                          y: height - (height * 0.7)))
        
        rectanglePath.addLine(to: CGPoint(x: width,
                                          y: height - (height * 0.1)))
        
        rectanglePath.addLine(to: CGPoint(x: width - (width * 0.3),
                                          y: height - (height * 0.1)))
        
        let trianglePath = CGMutablePath()
        
        let halfWidth = width / 2
        
        trianglePath.move(to: CGPoint(x: halfWidth, y: height - (height * 0.2)))
        
        trianglePath.addLine(to: CGPoint(x: width * 0.3, y: height))
        
        trianglePath.move(to: CGPoint(x: halfWidth, y: height - (height * 0.2)))
        
        trianglePath.addLine(to: CGPoint(x: width - (width * 0.3), y: height))
        
        trianglePath.addLine(to: CGPoint(x: width * 0.3, y: height))
        
        rectangleLayer.path = rectanglePath
        triangleLayer.path = trianglePath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        rectangleLayer.addSublayer(triangleLayer)
        layer.addSublayer(rectangleLayer)
    }
    
}
