//
//  SpotifySignInButton.swift
//  Spotify
//
//  Created by yekta on 10.12.2024.
//

import UIKit

class SpotifySignInButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureButton()
    }
    
    private func configureButton() {
        self.backgroundColor = .white
        self.setTitle("Sign In with Spotify", for: .normal)
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 8
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
}
