//
//  ViewController.swift
//  Spotify
//
//  Created by Aaron Johncock on 04/12/2022.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Browse"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(didTapSettings))
        
        fetchData()
        
    }
    
    private func fetchData() {
        
        APICaller.shared.getFeaturedPlaylists { _ in
            
        }
//        APICaller.shared.getNewReleases { result in
//            switch result {
//            case .success(let success):
//                break
//            case .failure(let failure):
//                break
//            }
//        }
    }
    
    @objc func didTapSettings() {
        let vc = SettingsViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }

}

