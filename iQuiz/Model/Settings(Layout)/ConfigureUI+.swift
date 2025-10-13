//
//  ConfigureUI+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 12/10/25.
//

import UIKit

extension WorksDetailViewController{
    
    func configureUI(){
        guard let workDetail = workDetail else {return}
        
        workDetailImageView.image = UIImage(named: workDetail.imageName)
        workDetailImageView.contentMode = .scaleAspectFit
        workDetailImageView.clipsToBounds = true
        
        configureText(for: workDetail)
    }
}
