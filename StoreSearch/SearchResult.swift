//
//  SearchResult.swift
//  StoreSearch
//
//  Created by Mihaela Simion on 8/23/18.
//  Copyright © 2018 Mihaela Simion. All rights reserved.
//

import Foundation


class ResultArray: Codable {
    var resultCount = 0
    var results = [SearchResult]()
}

class SearchResult: Codable {
    var artistName = ""
    var trackName = ""
    
    var name: String {
        return trackName
    }
}
