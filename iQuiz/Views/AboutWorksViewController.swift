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
               let work = sender as? Works {
                // Passa o objeto Works para a tela de detalhes
                detailVC.work = work
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
