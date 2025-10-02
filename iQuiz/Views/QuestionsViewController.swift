//
//  QuestionsViewController.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 02/10/25.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet weak var titleQuestion: UILabel!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        print(sender.tag)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
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
