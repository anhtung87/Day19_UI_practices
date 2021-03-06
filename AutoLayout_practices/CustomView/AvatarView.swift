//
//  AvatarView.swift
//  AutoLayout_practices
//
//  Created by Hoang Tung on 12/24/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class AvatarView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        render()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func render() {
        self.translatesAutoresizingMaskIntoConstraints = false
//        self.backgroundColor = .black
        self.layer.borderColor = UIColor.systemIndigo.cgColor
        self.layer.borderWidth = 2
    }

}
