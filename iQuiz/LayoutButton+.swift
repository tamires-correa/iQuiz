//
//  LayoutButton+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 30/09/25.
//

import UIKit

extension UIButton {
    func layoutButton(){
        self.layer.cornerRadius = 12
        self.backgroundColor = UIColor(red: 93/255, green: 155/255, blue: 164/255, alpha: 1)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
    }
}


