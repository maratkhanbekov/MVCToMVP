//
//  SearchForSongModuleBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Marat Khanbekov on 16.01.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit


final class SearchForSongModuleBuilder {
    static func build() -> (UIViewController & SearchForSongViewInput) {
        let presenter = SearchForSongPresenter()
        let viewController = SearchForSongViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
