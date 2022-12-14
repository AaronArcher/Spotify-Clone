//
//  UserProfile.swift
//  Spotify
//
//  Created by Aaron Johncock on 06/12/2022.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
//    let followers: [String: Codable?]
    let id: String
    let product: String
    let images: [APIImage]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
