//
//  AllCategoriesResponse.swift
//  Spotify
//
//  Created by Aaron Johncock on 06/03/2023.
//

import Foundation

struct AllCategoriesResponse: Codable {
    let categories: Categories
}

struct Categories: Codable {
    let items: [Category]
}

struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}
