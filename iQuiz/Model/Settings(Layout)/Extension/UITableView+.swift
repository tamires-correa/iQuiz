//
//  UITableView+.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 12/10/25.
//

import UIKit

extension AboutWorksViewController: UITableViewDataSource,      UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        workList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WorkCell", for: indexPath) as? WorkTableViewCell else {
            return UITableViewCell()
        }
        
        let work = workList[indexPath.row]
        cell.configure(with: work)
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedWork = workList[indexPath.row]
        
        performSegue(withIdentifier: "showWorkDetails", sender: selectedWork)
    }
}

