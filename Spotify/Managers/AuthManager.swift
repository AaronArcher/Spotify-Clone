//
//  AuthManager.swift
//  Spotify
//
//  Created by Aaron Johncock on 06/12/2022.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: String? {
        return nil
    }

    private var shouldRefreshToken: Bool {
        return false
    }
    
}
