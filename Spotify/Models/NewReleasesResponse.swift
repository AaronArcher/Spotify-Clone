//
//  NewReleasesResponse.swift
//  Spotify
//
//  Created by Aaron Johncock on 11/12/2022.
//

import Foundation

struct NewReleasesResponse: Codable {
    let albums: AlbumsResponse
}

struct AlbumsResponse: Codable {
    let items: [Album]
}

