//
//  BaseButton.swift
//  TestForSurf
//
//  Created by Лаванда on 12.02.2023.
//

import UIKit

final class BaceButton: UIButton {
    private let label = UILabel()
   
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
}

private extension BaceButton {
    func addViews() {
        addSubview(label)
    }
    
    func layoutViews() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo:trailingAnchor, constant: -44),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 44),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
        
    }
    
    func configure() {
        
        label.text = Resources.Text.button
        label.font = Resources.Font.button
        label.textColor = .white
        backgroundColor = Resources.Colors.button
        layer.cornerRadius = 30
        label.textAlignment = .center
    }
}
