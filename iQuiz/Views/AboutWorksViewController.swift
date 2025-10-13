//
//  AboutWorksViewController.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 12/10/25.
//

import UIKit

class AboutWorksViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    var workList = works
    
    @IBAction func sort(_ sender: Any) {
        print ("botão ordernar pressionado")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .gray
        tableView.separatorInset = .zero
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWorkDetails" {
            if let detailVC = segue.destination as? WorksDetailViewController,
               let selectedWork = sender as? Works {
                if let workDetail = worksDetail.first(where: { $0.imageName == selectedWork.imageName}) {
                    detailVC.workDetail = workDetail
                }
            }
        }
    }
}
