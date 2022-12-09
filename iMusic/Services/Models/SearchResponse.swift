//
//  SearchResponse.swift
//  iMusic
//
//  Created by Георгий Кузнецов on 11.09.2022.
//

import Foundation



struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}


struct Track: Decodable {
    var artistName: String
    var trackName:  String
    var collectionName: String?
    var artworkUrl100: String?
    var previewUrl: String?
}
