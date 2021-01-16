//
//  SearchForSongPresenter.swift
//  iOSArchitecturesDemo
//
//  Created by Marat Khanbekov on 16.01.2021.
//  Copyright © 2021 ekireev. All rights reserved.
//

import UIKit

class SearchForSongPresenter {
    var viewInput: (UIViewController & SearchForSongViewInput)?
    
    let searchService = ITunesSearchService()
    
    func requestApps(with query: String) {
        
        self.searchService.getSongs(forQuery: query) { [weak self] result in
            guard let self = self else { return }
            self.viewInput?.throbber(show: false)
            result
                .withValue { apps in
                    guard !apps.isEmpty else {
                        self.viewInput?.showNoResults()
                        return
                    }
                    self.viewInput?.hideNoResults()
                    self.viewInput?.searchResults = apps
                }
                .withError {
                    self.viewInput?.showError(error: $0)
                }
        }
    }
    
    private func openAppDetails(with app: ITunesSong) {
        let songDetaillViewController = SongDetailViewController(app: app)
        self.viewInput?.navigationController?.pushViewController(songDetaillViewController, animated: true)
    }
    
}

extension SearchForSongPresenter: SearchForSongViewOutput {
    func viewDidSearch(with query: String) {
        self.viewInput?.throbber(show: true)
        self.requestApps(with: query)
    }
    
    func viewDidSelectApp(_ app: ITunesSong) {
        self.openAppDetails(with: app)
    }
    
}
