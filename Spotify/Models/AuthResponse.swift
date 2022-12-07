//
//  AuthResponse.swift
//  Spotify
//
//  Created by Aaron Johncock on 07/12/2022.
//

import Foundation

struct AuthResponse: Codable {
 
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
    
}
