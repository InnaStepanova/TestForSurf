//
//  InfoView.swift
//  TestForSurf
//
//  Created by Лаванда on 12.02.2023.
//

import UIKit

class InfoView: UIView {
    
    var dataSourse: [String] = ["IOS", "Android", "Design", "Flutter", "QA", "PM"]
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 12
        return stackView
    }()
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        createUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addViews()
        layoutViews()
        createUI()
    }
}

private extension InfoView {
    
    func addViews(){
        addSubview(scrollView)
        scrollView.addSubview(stackView)
    }
    
    func layoutViews(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            
            
            
            
        ])
    }
    
    func createButton(index: Int, label: String) -> InfoButton {
           let button = InfoButton()
            button.tag = index
            button.setButtonTitle(title: label)
            button.addTarget(self, action: #selector(infoButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
            return button
    }
    
    func createUI() {
        for (index, label) in dataSourse.enumerated(){
            stackView.addArrangedSubview(createButton(index: index, label: label))
        }
    }
    
    @objc func infoButtonPressed(sender: InfoButton) {
        guard let button = sender as? InfoButton else {return}
        if button.backgroundColor == Resources.Colors.infoButton {
            button.backgroundColor = Resources.Colors.button
            button.label.textColor = .white
        } else {
            button.backgroundColor = Resources.Colors.infoButton
            button.label.textColor = Resources.Colors.button
        }
       print ("Button pressed")
    }
    
}
