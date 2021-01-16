//
//  DescriptionViewController.swift
//  iOSArchitecturesDemo
//
//  Created by Marat Khanbekov on 15.01.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var rootView = DescriptionView()
    
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    var app: ITunesApp
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        fillData()
        super.viewDidLoad()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func fillData() {
        rootView.releaseDate.text = app.releaseDate
        rootView.releaseNote.text = app.releaseNotes
    }
}
