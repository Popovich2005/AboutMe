//
//  ViewController.swift
//  AboutMe
//
//  Created by Алексей Попов on 10.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Алексей Попов"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pop")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var bioLabel: UILabel = {
        let label = UILabel()
        label.text = "Моя биография"
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .light)
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Отправь мне сообщение"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        button.setTitle("Отправить", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews()
        constraintView()
    }

    func addSubviews() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(bioLabel)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
    }
    
    func constraintView() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 200),
            button.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.5)
                                    
        ])
    }
    
    @objc func buttonAction(_ sender: UIButton) {
        print(textField.text)
    }

}

