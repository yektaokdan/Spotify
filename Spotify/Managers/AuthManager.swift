//
//  AuthManager.swift
//  Spotify
//
//  Created by yekta on 10.12.2024.
//

import Foundation

final class AuthManager{
    
    ///: Singleton Pattern
    static let shared = AuthManager()
    private init () {}
    
    ///: Sabit değerler
    struct Constants{
        static let clientID = "9241c065a28743159b5f89912c673700" // Spotify Client ID
        static let clientSecret = "6e8152c2f20747d6abd92a344e6c2a1d" // Spotify Client Secret
        static let redirectURI = "https://www.iosacademy.io" // Spotify Redirect URI
        static let scopes = "user-read-private" // Permissions
    }
    
    public var signInURL:URL?{
        let base = "https://accounts.spotify.com/authorize"
        let urlString = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(Constants.scopes)&redirect_uri=\(Constants.redirectURI)&show_dialog=TRUE"
        
        return URL(string: urlString)
    }
    
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
    public func exchangeCodeForToke(code:String, completion:@escaping (Bool) -> Void){
        //get token
    }
    
    public func refreshAccessToken(){
         
    }
    private func cacheToken(){
        
    }
}
