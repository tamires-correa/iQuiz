//
//  LayoutButton.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 02/10/25.
//

import UIKit

@IBDesignable
class LayoutButton: UIButton {
    override func prepareForInterfaceBuilder(){
        super.prepareForInterfaceBuilder()
        layoutButton()
    }
    
    override func awakeFromNib(){
        super.awakeFromNib()
        layoutButton()
    }
    
    private func layoutButton(){
        print("layout aplicado")
        self.layer.cornerRadius = 12
        self.backgroundColor = UIColor.quizDefaut
        self.setTitleColor(.white, for: .normal)
        self.setTitleColor(.white, for: .disabled)
        titleLabel?.numberOfLines = 0

    }
}
