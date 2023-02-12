//
//  InfoButton.swift
//  TestForSurf
//
//  Created by Лаванда on 12.02.2023.
//

import UIKit

final class InfoButton: UIButton {
    
    let label = UILabel()
   
    init() {
        super.init(frame: .zero)
        addViews()
        layoutViews()
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        addViews()
        layoutViews()
        configure()
    }
    
    func setButtonTitle(title: String) {
        label.text = title
    }
}

private extension InfoButton {
    func addViews() {
        addSubview(label)
    }
    
    func layoutViews() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo:trailingAnchor, constant: -24),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
//            label.topAnchor.constraint(equalTo: topAnchor, constant: 12),
//            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12)
        ])
        
    }
    
    func configure() {
        
        label.font = Resources.Font.infoButton
        label.textColor = Resources.Colors.button
        backgroundColor = Resources.Colors.infoButton
        layer.cornerRadius = 12
        label.textAlignment = .center
    }
}
