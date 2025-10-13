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
        
        if let work = works.first(where: {$0.imageName == workDetail.imageName}) {
            title = work.name
        }
        
        navigationController?.navigationBar.titleTextAttributes = [
                   .foregroundColor: UIColor.white,
                   .font: UIFont.boldSystemFont(ofSize: 20)
               ]
        
        workDetailImageView.image = UIImage(named: workDetail.imageName)
        workDetailImageView.contentMode = .scaleAspectFit
        workDetailImageView.clipsToBounds = true
        
        configureText(for: workDetail)
    }
}
