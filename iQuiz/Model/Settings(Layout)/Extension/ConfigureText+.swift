//
//  ConfigureText+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 12/10/25.
//

import UIKit

extension WorksDetailViewController{
    
    func configureText(for workDetail: WorksDetail){
        let description = workDetail.description
        let linkText = "\n\nPara saber mais acesse:\n \(workDetail.moreInfoURL)"
        let fullText = description + linkText
        
        let attributedString = NSMutableAttributedString(string: fullText)
        
        let mainStyle = NSMutableParagraphStyle()
        mainStyle.firstLineHeadIndent = 30
        mainStyle.alignment = .justified
        mainStyle.lineSpacing = 1.5
        
        let linkStyle = NSMutableParagraphStyle()
        linkStyle.alignment = .left
        linkStyle.lineSpacing = 1.5
        
        let textColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1.0)
        
        let descriptionRange = NSRange(location: 0, length: description.count)
        attributedString.addAttributes([
            .paragraphStyle: mainStyle,
            .font: UIFont.systemFont(ofSize: 20),
            .foregroundColor: textColor
            ], range: descriptionRange)
        
        let linkRange = NSRange(location: description.count, length: linkText.count)
            attributedString.addAttributes([
                .paragraphStyle: linkStyle,
                .font: UIFont.systemFont(ofSize: 16),
                .foregroundColor: textColor
            ], range: linkRange)
            
        if let linkRange = fullText.range(of: workDetail.moreInfoURL){
            attributedString.addAttribute(.link, value: workDetail.moreInfoURL, range: NSRange(linkRange, in: fullText))
        }
            
        descriptionTextView.attributedText = attributedString
        descriptionTextView.isEditable = false
        descriptionTextView.isSelectable = true
        }
    }
