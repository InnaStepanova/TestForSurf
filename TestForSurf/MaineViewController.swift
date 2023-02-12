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
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 40
        return contentView
    }()
    
    private var mainLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Text.mainLabel
        label.font = Resources.Font.mainLabel
        label.textColor = Resources.Colors.mainColor
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Text.descriptionLabel
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.font = Resources.Font.descriptionLabel
        label.textColor = Resources.Colors.descriptionColor
        return label
    }()
    
    private var invitationLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Text.invitation
        label.font = Resources.Font.descriptionLabel
        label.textColor = Resources.Colors.descriptionColor
        return label
    }()
    
    private var sendOrderBurron: BaceButton = {
        let button = BaceButton()
        button.addTarget(self, action: #selector(sendOrderButtonPressed), for: .touchUpInside)
        return button
    }()
    
//    private var buttonsCollectionView: UICollectionView = {
//        let collection = UICollectionView()
//        return collection
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addVievs()
        layoutViews()
    }
    
    @objc func sendOrderButtonPressed() {
        showAlert(with: "Поздравляем!", and: "Ваша заявка успешно отправлена!")
    }
}

extension MaineViewController {
    
    private func addVievs() {
        view.addSubview(backgroundView)
        view.addSubview(contentView)
        view.addSubview(invitationLabel)
        view.addSubview(sendOrderBurron)
        contentView.addSubview(mainLabel)
        contentView.addSubview(descriptionLabel)
//        contentView.addSubview(buttonsCollectionView)
    }
    
    private func layoutViews() {
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
//        buttonsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        invitationLabel.translatesAutoresizingMaskIntoConstraints = false
        sendOrderBurron.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            mainLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            mainLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            contentView.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -75),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 12),
            descriptionLabel.trailingAnchor.constraint(equalTo: mainLabel.trailingAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: mainLabel.leadingAnchor),
            
//            buttonsCollectionView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 12),
//            buttonsCollectionView.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
//            buttonsCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            buttonsCollectionView.heightAnchor.constraint(equalToConstant: 44),
            
            invitationLabel.leadingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor),
            invitationLabel.centerYAnchor.constraint(equalTo: sendOrderBurron.centerYAnchor),
            
            sendOrderBurron.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sendOrderBurron.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58)
        ])
    }
    
    private func showAlert (with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Закрыть", style: .destructive)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
