//
//  SearchForSongProtocols.swift
//  iOSArchitecturesDemo
//
//  Created by Marat Khanbekov on 16.01.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import Foundation


protocol SearchForSongViewInput {
    var searchResults: [ITunesSong] { get set }
    
    func showError(error: Error)
    
    func showNoResults()
    
    func hideNoResults()
    
    func throbber(show: Bool)
}

protocol SearchForSongViewOutput {
    func viewDidSearch(with query: String)
    
    func viewDidSelectApp(_ app: ITunesSong)
}
