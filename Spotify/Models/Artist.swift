//
//  Artist.swift
//  Spotify
//
//  Created by Aaron Johncock on 06/12/2022.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
