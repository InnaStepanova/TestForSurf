//
//  MaineViewController.swift
//  TestForSurf
//
//  Created by Лаванда on 11.02.2023.
//

import UIKit

class MaineViewController: UIViewController {
    
    private let backgroundView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Images.background
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addVievs()
        layoutViews()
    }
}

extension MaineViewController {
    
    private func addVievs() {
        view.addSubview(backgroundView)
    }
    
    private func layoutViews() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
