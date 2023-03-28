//
//  LineOfButtons.swift
//  DarkCalc
//
//  Created by Émerson M Luz on 28/03/23.
//

import UIKit

protocol NumericKeyboardDelegate {
    func getValue(character: String)
}

class NumericKeyboard: UIStackView {
    var delegate: NumericKeyboardDelegate?
    
    lazy var lineOneStackView: UIStackView = setStackView()
    lazy var ac: UIButton = setButton(title: "AC", backgroundColor: .darkGray)
    lazy var mod: UIButton = setButton(title: "ˆ", backgroundColor: .darkGray)
    lazy var percentagem: UIButton = setButton(title: "%", backgroundColor: .darkGray)
    lazy var divider: UIButton = setButton(title: "/", backgroundColor: .black)
    
    lazy var lineTwoStackView: UIStackView = setStackView()
    lazy var numberSeven: UIButton = setButton(title: "7", backgroundColor: .lightGray)
    lazy var numberEight: UIButton = setButton(title: "8", backgroundColor: .lightGray)
    lazy var numberNine: UIButton = setButton(title: "9", backgroundColor: .lightGray)
    lazy var multiplier: UIButton = setButton(title: "*", backgroundColor: .black)
    
    lazy var lineThreeStackView: UIStackView = setStackView()
    lazy var numberFour: UIButton = setButton(title: "4", backgroundColor: .lightGray)
    lazy var numberFive: UIButton = setButton(title: "5", backgroundColor: .lightGray)
    lazy var numberSix: UIButton = setButton(title: "6", backgroundColor: .lightGray)
    lazy var subtraction: UIButton = setButton(title: "-", backgroundColor: .black)
    
    lazy var lineFourStackView: UIStackView = setStackView()
    lazy var numberOne: UIButton = setButton(title: "1", backgroundColor: .lightGray)
    lazy var numberTwo: UIButton = setButton(title: "2", backgroundColor: .lightGray)
    lazy var numberThree: UIButton = setButton(title: "3", backgroundColor: .lightGray)
    lazy var plus: UIButton = setButton(title: "+", backgroundColor: .black)
    
    lazy var lineFiveStackView: UIStackView = setStackView()
    lazy var leftLineFiveStackView: UIStackView = setStackView()
    lazy var numberZero: UIButton = setButton(title: "0", backgroundColor: .lightGray)
    lazy var dot: UIButton = setButton(title: ".", backgroundColor: .lightGray)
    lazy var equal: UIButton = setButton(title: "=", backgroundColor: .black)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setSelf()
        self.setComponents()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setSelf() {
        self.distribution = .fillEqually
        self.alignment = .fill
        self.axis = .vertical
        self.spacing = 0.5
        self.layer.borderWidth = 0.6
    }
    
    func setStackView() -> UIStackView {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.axis = .horizontal
        stack.spacing = 0.5
        return stack
    }
    
    func setButton(title: String, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Arial", size: 22)
        button.addTarget(self, action: #selector(sender(sender:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    func setComponents() {
        self.addArrangedSubview(lineOneStackView)
        lineOneStackView.addArrangedSubview(ac)
        lineOneStackView.addArrangedSubview(mod)
        lineOneStackView.addArrangedSubview(percentagem)
        lineOneStackView.addArrangedSubview(divider)
        self.addArrangedSubview(lineTwoStackView)
        lineTwoStackView.addArrangedSubview(numberSeven)
        lineTwoStackView.addArrangedSubview(numberEight)
        lineTwoStackView.addArrangedSubview(numberNine)
        lineTwoStackView.addArrangedSubview(multiplier)
        self.addArrangedSubview(lineThreeStackView)
        lineThreeStackView.addArrangedSubview(numberFour)
        lineThreeStackView.addArrangedSubview(numberFive)
        lineThreeStackView.addArrangedSubview(numberSix)
        lineThreeStackView.addArrangedSubview(subtraction)
        self.addArrangedSubview(lineFourStackView)
        lineFourStackView.addArrangedSubview(numberOne)
        lineFourStackView.addArrangedSubview(numberTwo)
        lineFourStackView.addArrangedSubview(numberThree)
        lineFourStackView.addArrangedSubview(plus)
        self.addArrangedSubview(lineFiveStackView)
        lineFiveStackView.addArrangedSubview(leftLineFiveStackView)
        lineFiveStackView.addArrangedSubview(equal)
        leftLineFiveStackView.addArrangedSubview(numberZero)
        leftLineFiveStackView.addArrangedSubview(dot)
    }
    
    @objc func sender(sender: UIButton) {
        delegate?.getValue(character: sender.titleLabel?.text ?? "")
    }
}
