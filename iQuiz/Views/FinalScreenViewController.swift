//
//  FinalScreenViewController.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 03/10/25.
//

import UIKit

class FinalScreenViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    
    var score: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        settingsFinalScreen()
        // Do any additional setup after loading the view.
    }
    
    func settingsFinalScreen(){
        guard let score = score else {return}
        resultLabel.text = "Você acertou \(score) de \(questions.count) questões"
        
        let percent = (score * 100) / (questions.count)
        percentLabel.text = "Percentual final: \(percent)%"
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
