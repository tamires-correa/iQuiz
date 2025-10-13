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
    }
    
    @IBAction func retakeQuizButtonPressed(_ sender: LayoutButton) {
        questions = originalQuestions.shuffled()
        performSegue(withIdentifier: "goToQuestionScreen", sender: nil)
    }
    
    func settingsFinalScreen(){
        guard let score = score else {return}
        resultLabel.text = "Você acertou \(score) de \(originalQuestions.count) questões"
        
        let percent = (score * 100) / (originalQuestions.count)
        percentLabel.text = "Percentual final: \(percent)%"
    }
}
