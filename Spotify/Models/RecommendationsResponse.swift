//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by Aaron Johncock on 14/12/2022.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
