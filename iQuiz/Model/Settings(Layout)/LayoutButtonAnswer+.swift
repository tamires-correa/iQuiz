//
//  LayoutButtonAnswer+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 03/10/25.
//

import UIKit

extension LayoutButton {
    
    func markAsCorrect(){
        UIView.animate(withDuration: 0.15) {
                 self.backgroundColor = .quizCorrect
             }
            }
    
    func markAsIncorrect(){
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = .quizIncorrect
        }
    }
    
    func resetToDefault(){
        UIView.animate(withDuration: 0.15){
            self.backgroundColor = .quizDefaut
        }
    }
}
