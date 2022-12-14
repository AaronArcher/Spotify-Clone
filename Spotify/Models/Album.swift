//
//  Album.swift
//  Spotify
//
//  Created by Aaron Johncock on 14/12/2022.
//

import Foundation

struct Album: Codable {
    let album_type: String
    let available_markets: [String]
    let id: String
    let images: [APIImage]
    let name: String
    let release_date: String
    let total_tracks: Int
    let artists: [Artist]
}
