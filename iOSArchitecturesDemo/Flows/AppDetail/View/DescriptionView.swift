//
//  DescriptionView.swift
//  iOSArchitecturesDemo
//
//  Created by Marat Khanbekov on 16.01.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class DescriptionView: UIView {
    
    var title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Что нового"
        label.font = UIFont(name: "systemFont", size: 20)
        return label
    }()
    
    var subTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.text = ""
        label.font = UIFont(name: "systemFont", size: 12)
        return label
    }()
    
    var releaseNote: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.text = ""
        label.font = UIFont(name: "systemFont", size: 12)
        return label
    }()
    
    var rightCornerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("История версий", for: .normal)
        return button
    }()
    
    var releaseDate: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.text = ""
        label.font = UIFont(name: "systemFont", size: 12)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            subTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            releaseNote.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 10),
            releaseNote.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        
        NSLayoutConstraint.activate([
            rightCornerButton.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            rightCornerButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            releaseDate.topAnchor.constraint(equalTo: rightCornerButton.bottomAnchor, constant: 20),
            releaseDate.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setup() {
        addSubview(title)
        addSubview(subTitle)
        addSubview(releaseNote)
        
        addSubview(rightCornerButton)
        addSubview(releaseDate)
        
        setNeedsUpdateConstraints()
    }
    
}
