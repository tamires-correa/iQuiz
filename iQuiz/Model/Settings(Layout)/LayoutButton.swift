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
        self.backgroundColor = UIColor(red: 93/255, green: 155/255, blue: 164/255, alpha: 1)
        self.setTitleColor(.white, for: .normal)
        titleLabel?.numberOfLines = 0

    }
    
    
}
