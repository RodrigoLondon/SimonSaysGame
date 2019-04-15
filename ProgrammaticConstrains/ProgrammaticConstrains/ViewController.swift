//
//  ViewController.swift
//  ProgrammaticConstrains
//
//  Created by Lewis Jones on 14/04/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    func setUp() {
        setUpRedRectangle()
        setUpBlueView()
    }
    
    let redRectangle = UIView()
     func setUpRedRectangle() {
        redRectangle.backgroundColor = .red
        view.addSubview(redRectangle)
        redRectangle.frame = CGRect(x: 50, y: 100, width: 150, height: 200)
    }
    
    func setUpBlueView() {
        let blueView = UIView()
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: blueView,
                           attribute: .left,
                           relatedBy: .equal,
                           toItem: redRectangle,
                           attribute: .right,
                           multiplier: 1,
                           constant: 20).isActive = true
        
        NSLayoutConstraint(item: blueView,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 175).isActive = true
        
        NSLayoutConstraint(item: blueView,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: redRectangle,
                           attribute: .height,
                           multiplier: 0.5,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: blueView,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: redRectangle,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
        
    }
    
    func setUpBlackLabel() {
        let blackLabel = UILabel()
        blackLabel.backgroundColor = .black
        blackLabel.textColor = .white
        blackLabel.text = "this is a subview of the red rectangle"
        redRectangle.addSubview(blackLabel)
        blackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        blackLabel.centerXAnchor.constraint(equalTo: redRectangle.centerXAnchor).isActive = true
        blackLabel.centerYAnchor.constraint(equalTo: redRectangle.centerYAnchor).isActive = true
        view.bringSubviewToFront(redRectangle)
    }
}

