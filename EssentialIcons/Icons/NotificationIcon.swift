//
//  NotificationIcon.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 10/01/2019.
//  Copyright © 2019 Kauna Mohammed. All rights reserved.
//

import UIKit

class NotificationIcon: UIView {
    
    public var lineWidth: CGFloat = 2 {
        didSet { setNeedsDisplay() }
    }
    
    public var bubbleColor: CGColor = #colorLiteral(red: 1, green: 0.1215686275, blue: 0.262745098, alpha: 1) {
        didSet { setNeedsDisplay() }
    }
    
    private lazy var notificationPathLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.lineWidth = lineWidth
        return layer
    }()
    
    private lazy var notificationLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = bubbleColor
        return layer
    }()
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let height = rect.size.height
        let width = rect.size.width
        
        let paddingForNotificaionRect = width * 0.2
        let bubbleRect = CGRect(x: width - 22,
                                y: 2.5,
                                width: paddingForNotificaionRect,
                                height: paddingForNotificaionRect)
        
        let bezierPath = UIBezierPath(ovalIn: bubbleRect)
        
        let bubbleRectCenter = bubbleRect.size.height / 2
        
        let path = CGMutablePath()
        
        path.move(to: CGPoint(x: width - (paddingForNotificaionRect / 2),
                              y: height - 10))
        path.addLine(to: CGPoint(x:  width - (paddingForNotificaionRect / 2),
                                 y: 25)) // change this
        path.move(to: CGPoint(x: width - (paddingForNotificaionRect / 2),
                              y: height - 10))
        path.addLine(to: CGPoint(x: 10,
                                 y: height - 10))
        path.addLine(to: CGPoint(x: 10, y: 10))
        
        path.addLine(to: CGPoint(x: width - 25,
                                 y: bubbleRectCenter))
        
        notificationPathLayer.path = path
        notificationLayer.path = bezierPath.cgPath
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.addSublayer(notificationPathLayer)
        layer.addSublayer(notificationLayer)
    }
    
}
