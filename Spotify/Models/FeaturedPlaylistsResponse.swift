//
//  FeaturedPlaylistResponse.swift
//  Spotify
//
//  Created by Aaron Johncock on 13/12/2022.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}


