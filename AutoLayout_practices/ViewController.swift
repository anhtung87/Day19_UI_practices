//
//  ViewController.swift
//  AutoLayout_practices
//
//  Created by Hoang Tung on 12/24/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topView: CustomView = {
        let view = CustomView()
        return view
    }()
    
    let bottomView: CustomView = {
        let view = CustomView()
        return view
    }()
    
    let tealButton: CustomButton = {
        let button = CustomButton()
        return button
    }()
    
    let redButton: CustomButton = {
        let button = CustomButton()
        return button
    }()
    
    let yellowButton: CustomButton = {
        let button = CustomButton()
        return button
    }()
    
    let purpleButton: CustomButton = {
        let button = CustomButton()
        return button
    }()
    
    let avatarScrollView: CustomScrollView = {
        let scrollView = CustomScrollView()
        return scrollView
    }()
    
    let avatar1View: AvatarView = {
        let view = AvatarView()
        return view
    }()
    
    let avatar2View: AvatarView = {
        let view = AvatarView()
        return view
    }()
    
    let avatar3View: AvatarView = {
        let view = AvatarView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(topView)
        view.addSubview(bottomView)
        
        topView.addSubview(tealButton)
        topView.addSubview(redButton)
        topView.addSubview(yellowButton)
        topView.addSubview(purpleButton)
        
        topView.addSubview(avatarScrollView)
        
        avatarScrollView.addSubview(avatar1View)
        avatarScrollView.addSubview(avatar2View)
        avatarScrollView.addSubview(avatar3View)
        
//        avatarScrollView.contentSize = CGSize(width: avatar1View.bounds.width, height: avatar1View.bounds.height)
        
        setupLayout()
    }

    func setupLayout() {
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        topView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY / 3).isActive = true
        
        bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 32).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64).isActive = true
        
        tealButton.topAnchor.constraint(equalTo: topView.leftLabel.bottomAnchor, constant: 16).isActive = true
        tealButton.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        tealButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.25).isActive = true
        tealButton.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.1).isActive = true
        
        redButton.topAnchor.constraint(equalTo: topView.leftLabel.bottomAnchor, constant: 16).isActive = true
        redButton.leadingAnchor.constraint(equalTo: tealButton.trailingAnchor, constant: 0).isActive = true
        redButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.25).isActive = true
        redButton.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.1).isActive = true
        
        yellowButton.topAnchor.constraint(equalTo: topView.leftLabel.bottomAnchor, constant: 16).isActive = true
        yellowButton.leadingAnchor.constraint(equalTo: redButton.trailingAnchor, constant: 0).isActive = true
        yellowButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.25).isActive = true
        yellowButton.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.1).isActive = true
        
        purpleButton.topAnchor.constraint(equalTo: topView.leftLabel.bottomAnchor, constant: 16).isActive = true
        purpleButton.leadingAnchor.constraint(equalTo: yellowButton.trailingAnchor, constant: 0).isActive = true
        purpleButton.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 0.25).isActive = true
        purpleButton.heightAnchor.constraint(equalTo: topView.heightAnchor, multiplier: 0.1).isActive = true
        
        avatarScrollView.topAnchor.constraint(equalTo: tealButton.bottomAnchor, constant: 16).isActive = true
        avatarScrollView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        avatarScrollView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        avatarScrollView.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: 0).isActive = true
        
        avatar1View.topAnchor.constraint(equalTo: avatarScrollView.topAnchor, constant: 0).isActive = true
        avatar1View.leadingAnchor.constraint(equalTo: avatarScrollView.leadingAnchor, constant: 0).isActive = true
        avatar1View.widthAnchor.constraint(equalTo: avatarScrollView.widthAnchor, multiplier: 0.5).isActive = true
        avatar1View.heightAnchor.constraint(equalTo: avatarScrollView.heightAnchor, multiplier: 1).isActive = true
        
        avatar2View.topAnchor.constraint(equalTo: avatar1View.topAnchor, constant: 0).isActive = true
        avatar2View.leadingAnchor.constraint(equalTo: avatar1View.trailingAnchor, constant: 0).isActive = true
        avatar2View.widthAnchor.constraint(equalTo: avatar1View.widthAnchor, multiplier: 1).isActive = true
        avatar2View.heightAnchor.constraint(equalTo: avatar1View.heightAnchor, multiplier: 1).isActive = true
        
        avatar3View.topAnchor.constraint(equalTo: avatar1View.topAnchor, constant: 0).isActive = true
        avatar3View.leadingAnchor.constraint(equalTo: avatar2View.trailingAnchor, constant: 0).isActive = true
        avatar3View.widthAnchor.constraint(equalTo: avatar1View.widthAnchor, multiplier: 1).isActive = true
        avatar3View.heightAnchor.constraint(equalTo: avatar1View.heightAnchor, multiplier: 1).isActive = true
        
        avatarScrollView.contentSize = CGSize(width: avatar1View.bounds.maxX * 3, height: avatar1View.bounds.maxY)
    }

}

