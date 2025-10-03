//
//  QuestionsViewController.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 02/10/25.
//

import UIKit

class QuestionsViewController: UIViewController {
   
    @IBOutlet var answerButtons: [LayoutButton]!
    @IBOutlet weak var titleQuestion: UILabel!
    @IBOutlet weak var imagemView: UIImageView!
    
    var score = 0
    var questionNumber = 0
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnsweredCorrectly = questions[questionNumber].correctAnswer == sender.tag
        if userAnsweredCorrectly {
            score += 1
            print("Acertou")
        }
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            settingsQuestion()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        settingsQuestion()
    }
    
    func settingsQuestion(){
        titleQuestion.text = questions[questionNumber].title
        imagemView.image = UIImage(named: questions[questionNumber].imageName)
        for button in answerButtons {
            let titleButton = questions[questionNumber].answers[button.tag]
            button.setTitle(titleButton, for: .normal)
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
