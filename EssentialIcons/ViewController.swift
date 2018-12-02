//
//  ViewController.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        view.backgroundColor = .white
        
        let searchButton = SearchIcon(frame: CGRect(x: 100,
                                                      y: 300,
                                                      width: 30,
                                                      height: 30))
        
        let documentButton = DocumentIcon(frame: CGRect(x: 150,
                                                               y: 300,
                                                               width: 25,
                                                               height: 30))
        
        let bookmarkButton = BookmarkIcon(frame: CGRect(x: 200,
                                                          y: 300,
                                                          width: 25,
                                                          height: 30))
        
        let hutIcon = HutIcon(frame: CGRect(x: 250,
                                            y: 300,
                                            width: 30,
                                            height: 30))
        
        view.add(hutIcon,
                 documentButton,
                 searchButton,
                 bookmarkButton)
    }
}

extension UIView {
    func add(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
