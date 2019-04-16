//
//  ViewController.swift
//  SimonSaysGame
//
//  Created by Lewis Jones on 12/04/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topLeftButton = UIButton()
    let topRightButton = UIButton()
    let bottomLeftButton = UIButton()
    let bottomRightButton = UIButton()
    let grayView = UIView()
    
    let displayLabel = UILabel()
    
    let margin: CGFloat = 50
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    func setUpViews() {
        setUpGrayView()
        setUptopLeftButton()
        setUptopRightButton()
        setUpbottomLeftButton()
        setUpbottomRightButton()
    }
    
    func setUpGrayView() {
        grayView.backgroundColor = .gray
        view.addSubview(grayView)
       
        //Constraints
        grayView.translatesAutoresizingMaskIntoConstraints = false
        grayView.heightAnchor.constraint(equalToConstant: margin).isActive = true
        grayView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        grayView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        grayView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        
        displayLabel.text = "Testing"
        displayLabel.textColor = .white
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        grayView.addSubview(displayLabel)
        
        displayLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
        displayLabel.centerYAnchor.constraint(equalTo: grayView.centerYAnchor).isActive = true
        
        
    }
    
    func setUptopLeftButton() {
        topLeftButton.backgroundColor = .red
        view.addSubview(topLeftButton)
        topLeftButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: .left,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .left,
                           multiplier: 1,
                           constant: margin).isActive = true
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .top,
                           multiplier: 1,
                           constant: margin).isActive = true
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: .right,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: -margin/2).isActive = true
        
        NSLayoutConstraint(item: topLeftButton,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: -margin).isActive = true
    }
    
    func setUptopRightButton() {
        topRightButton.backgroundColor = .yellow
        view.addSubview(topRightButton)
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        
       let topConstraint = NSLayoutConstraint(item: topRightButton,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .top,
                           multiplier: 1,
                           constant: margin)
        
        let leftConstraint = NSLayoutConstraint(item: topRightButton,
                           attribute: .left,
                           relatedBy: .equal,
                           toItem: topLeftButton,
                           attribute: .right,
                           multiplier: 1,
                           constant: margin)
        
       let rightConstraint = NSLayoutConstraint(item: topRightButton,
                           attribute: .right,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .right,
                           multiplier: 1,
                           constant: -margin)
        
       let bottomConstraint = NSLayoutConstraint(item: topRightButton,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: topLeftButton,
                           attribute: .bottom,
                           multiplier: 1,
                           constant: 0)
        
        
        view.addConstraints([topConstraint, leftConstraint, rightConstraint, bottomConstraint])
    }
    
    func setUpbottomLeftButton() {
        bottomLeftButton.backgroundColor = .green
        view.addSubview(bottomLeftButton)
        bottomLeftButton.translatesAutoresizingMaskIntoConstraints = false
        
        bottomLeftButton.topAnchor.constraint(equalTo: topLeftButton.bottomAnchor, constant: margin).isActive = true
        bottomLeftButton.bottomAnchor.constraint(equalTo: grayView.topAnchor, constant: -margin).isActive = true
        bottomLeftButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: margin).isActive = true
        bottomLeftButton.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -margin/2).isActive = true
        
    }
    
    func setUpbottomRightButton() {
        bottomRightButton.backgroundColor = .blue
        view.addSubview(bottomRightButton)
        bottomRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        bottomRightButton.topAnchor.constraint(equalTo: topLeftButton.bottomAnchor, constant: margin).isActive = true
        bottomRightButton.bottomAnchor.constraint(equalTo: grayView.topAnchor, constant: -margin).isActive = true
        bottomRightButton.leftAnchor.constraint(equalTo: bottomLeftButton.rightAnchor, constant: margin).isActive = true
        bottomRightButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -margin).isActive = true
        
        
    }
    
}

