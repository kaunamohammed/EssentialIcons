//
//  ViewController.swift
//  EssentialIcons
//
//  Created by Kauna Mohammed on 02/12/2018.
//  Copyright © 2018 Kauna Mohammed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func loadView() {
        super.loadView()
        let searchButton = SearchIcon(frame: CGRect(x: 20,
                                                      y: 300,
                                                      width: 60,
                                                      height: 60))
        
        let documentButton = DocumentIcon(frame: CGRect(x: 110,
                                                               y: 300,
                                                               width: 55,
                                                               height: 60))
        
        let bookmarkButton = BookmarkIcon(frame: CGRect(x: 210,
                                                          y: 300,
                                                          width: 55,
                                                          height: 60))
        
        let hutIcon = HutIcon(frame: CGRect(x: 300,
                                            y: 300,
                                            width: 60,
                                            height: 60))
        
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
