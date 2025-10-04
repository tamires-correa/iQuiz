//
//  LayoutButtonAnswer+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 03/10/25.
//

import UIKit

extension LayoutButton {
    private static let feedbackLabelTag = 999999
    
    func markAsCorrect(){
        UIView.animate(withDuration: 0.15) {
                 self.backgroundColor = .quizCorrect
             }
        addFeedbackLabel(text: "RESPOSTA CERTA", textColor: .quizCorrectText)
            }
    
    func markAsIncorrect(){
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = .quizIncorrect
        }
        addFeedbackLabel(text: "RESPOSTA INCORRETA", textColor: .quizIncorrectText)
    }
    
    func resetToDefault(){
        UIView.animate(withDuration: 0.15){
            self.backgroundColor = .quizDefaut
        }
        removeFeedbackLabel()
    }
    
    func addFeedbackLabel(text: String, textColor: UIColor){
        removeFeedbackLabel()
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.textColor = textColor
        label.textAlignment = .right
        label.tag = LayoutButton.feedbackLabelTag
        label.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label)
        
        label.topAnchor.constraint(equalTo: topAnchor, constant: 3).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        label.alpha = 0
        label.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
              UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveLinear) {
                  label.alpha = 1
                  label.transform = .identity
              }
    }
    
    private func removeFeedbackLabel() {
            viewWithTag(LayoutButton.feedbackLabelTag)?.removeFromSuperview()
        }
    }
