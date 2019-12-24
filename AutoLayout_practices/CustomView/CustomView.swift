//
//  CustomView.swift
//  AutoLayout_practices
//
//  Created by Hoang Tung on 12/24/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    let leftLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderColor = UIColor.green.cgColor
        label.layer.borderWidth = 2
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.blue.cgColor
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        render()
        
        self.addSubview(leftLabel)
        self.addSubview(rightLabel)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 2
    }

    func setupLayout() {
        leftLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        leftLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        leftLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        leftLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.1).isActive = true
        
        rightLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        rightLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        rightLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        rightLabel.heightAnchor.constraint(equalTo: leftLabel.heightAnchor, multiplier: 1).isActive = true
    }
    
}
