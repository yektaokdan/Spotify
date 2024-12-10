//
//  AuthManager.swift
//  Spotify
//
//  Created by trc vpn on 10.12.2024.
//

import Foundation

final class AuthManager{
    static let shared = AuthManager()
    private init () {}
    
    var isSignedIn:Bool {
        return false
    }
    
    private var token:String? {
        return nil
    }
    private var refreshToken:String? {
        return nil
    }
    private var tokenExpirationDate:Date? {
        return nil
    }
    private var shouldRefreshToken:Bool {
        return false
    }
}
