//
//  SortButton+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 13/10/25.
//

import UIKit

extension AboutWorksViewController{
    func showSortMenu(_ sender: UIButton){
        let nameAction = UIAction(title: "Nome", handler: { [weak self] _ in
            self?.sortByName()
        })
        
        let yearAction = UIAction(title: "Ano", handler: { [weak self] _ in
            self?.sortByYear()
        })
        
        let menu = UIMenu(children: [nameAction, yearAction])
        sender.menu = menu
        sender.showsMenuAsPrimaryAction = true
    }
    
    private func sortByName(){
        workList.sort { $0.name < $1.name }
        tableView.reloadData()
    }
    
    private func sortByYear(){
        workList.sort { $0.year < $1.year }
        tableView.reloadData()
    }
}
