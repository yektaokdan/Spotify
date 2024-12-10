//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by yekta on 10.12.2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signInButton = SpotifySignInButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Spotify"
        self.view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        signInButton.frame = CGRect(
            x: 20,
            y: view.height-80-view.safeAreaInsets.bottom,
            width: view.width-40,
            height: 50
        )
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @objc func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = {[weak self] succes in
            DispatchQueue.main.async {
                self?.handleSignIn(succes:succes)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
        
    }
    private func handleSignIn(succes:Bool) {
        
    }
}



#Preview {
    WelcomeViewController()
}
