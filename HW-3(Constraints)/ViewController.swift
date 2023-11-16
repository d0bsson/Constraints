//
//  ViewController.swift
//  HW-3(Constraints)
//
//  Created by d0bsson on 16.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameLabel)
        view.addSubview(bioLabel)
        view.addSubview(fotoLabel)
        textView.addSubview(textLabel)

        view.addSubview(textView)
        
        view.addSubview(avatarImage)
        view.addSubview(natureLeftImage)
        view.addSubview(natureRightImage)
        
        view.addSubview(button)
        
        setupConstraints()
        view.backgroundColor = .white
    }
    
    lazy var nameLabel = {
        let label = UILabel()
        label.text = "Berdnikov David"
        label.font = .boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var fotoLabel = {
        let label = UILabel()
        label.text = "Фото"
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var bioLabel = {
        let label = UILabel()
        label.text = "О себе"
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var avatarImage = {
        let image = UIImageView()
        image.image = UIImage(named: "img")
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 50
        return image
    }()
    
    lazy var natureLeftImage = {
        let image = UIImageView()
        image.image = UIImage(named: "nature1")
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var natureRightImage = {
        let image = UIImageView()
        image.image = UIImage(named: "nature2")
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var textView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var textLabel = {
        let text = UILabel()
        text.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var button = {
        let button = UIButton()
        button.setTitle("Редактировать", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(_colorLiteralRed: 19/255, green: 81/255, blue: 202/255, alpha: 1)
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
}

extension ViewController {
    private func setupConstraints() {
        
        let width = UIScreen.main.bounds.width
        let heigh = UIScreen.main.bounds.height
        print(width/heigh)
        print(heigh)
        
        NSLayoutConstraint.activate ([
            nameLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 80),
            
            avatarImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImage.heightAnchor.constraint(equalToConstant: 100),
            avatarImage.widthAnchor.constraint(equalToConstant: 100),
            
            bioLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            bioLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            bioLabel.heightAnchor.constraint(equalToConstant: 20),
            
            textView.topAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: 16),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            textLabel.topAnchor.constraint(equalTo: textView.topAnchor, constant: 8),
            textLabel.leadingAnchor.constraint(equalTo: textView.leadingAnchor, constant: 8),
            textLabel.trailingAnchor.constraint(equalTo: textView.trailingAnchor, constant: -8),
            textLabel.bottomAnchor.constraint(equalTo: textView.bottomAnchor, constant: -8),
            
            fotoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            fotoLabel.heightAnchor.constraint(equalToConstant: 20),
            fotoLabel.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 24),
            
            natureLeftImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            natureLeftImage.topAnchor.constraint(equalTo: fotoLabel.bottomAnchor, constant: 8),
            natureLeftImage.heightAnchor.constraint(equalToConstant: 165),
            natureLeftImage.widthAnchor.constraint(equalToConstant: 165),
            
            natureRightImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            natureRightImage.topAnchor.constraint(equalTo: fotoLabel.bottomAnchor, constant: 8),
            natureRightImage.heightAnchor.constraint(equalToConstant: 165),
            natureRightImage.widthAnchor.constraint(equalToConstant: 165),
            
            button.heightAnchor.constraint(equalToConstant: 59),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -38)
        ])
    }
}

