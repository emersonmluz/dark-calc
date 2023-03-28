//
//  ViewController.swift
//  DarkCalc
//
//  Created by Émerson M Luz on 28/03/23.
//

import UIKit

class DarkCalcViewController: UIViewController {
    
    lazy var containerDisplay: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        return view
    }()
    
    lazy var display: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.font = UIFont(name: "Arial", size: 25)
        return textField
    }()
    
    var numericKeyboard: NumericKeyboard = {
        let keyboard = NumericKeyboard()
        keyboard.translatesAutoresizingMaskIntoConstraints = false
        return keyboard
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        setComponents()
        setConstraint()
    }
    
    func setComponents() {
        view.addSubview(containerDisplay)
        containerDisplay.addSubview(display)
        view.addSubview(numericKeyboard)
    }
    
    func setConstraint() {
        NSLayoutConstraint.activate([
            containerDisplay.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerDisplay.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerDisplay.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerDisplay.heightAnchor.constraint(equalToConstant: 100),
            
            display.topAnchor.constraint(equalTo: containerDisplay.topAnchor, constant: 4),
            display.leadingAnchor.constraint(equalTo: containerDisplay.leadingAnchor, constant: 4),
            display.trailingAnchor.constraint(equalTo: containerDisplay.trailingAnchor, constant: -4),
            display.bottomAnchor.constraint(equalTo: containerDisplay.bottomAnchor, constant: -4),
            
            numericKeyboard.topAnchor.constraint(equalTo: containerDisplay.bottomAnchor, constant: 0.5),
            numericKeyboard.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            numericKeyboard.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            numericKeyboard.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

