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
    
    @IBAction func answerButtonPressed(_ sender: LayoutButton) {
        answerButtons.forEach { $0.isEnabled = false }
        
        let currentQuestion = questions[questionNumber]
        
        if currentQuestion.correctAnswer == sender.tag {
            score += 1
            sender.markAsCorrect()
            print("Acertou")
        } else {
            sender.markAsIncorrect()
            
            if let correctButton = answerButtons.first(where: { $0.tag == currentQuestion.correctAnswer }) {
                correctButton.markAsCorrect()
            }
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(settingsQuestion), userInfo: nil, repeats: false)
        } else {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                self.goToFinalScreen()
            }
        }
    }
    
    func goToFinalScreen(){
        performSegue(withIdentifier: "goToFinalScreen", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        score = 0
        questionNumber = 0

        settingsQuestion()
    }
    
    @objc func settingsQuestion(){
        titleQuestion.text = questions[questionNumber].title
        imagemView.image = UIImage(named: questions[questionNumber].imageName)
        
        for button in answerButtons {
            let titleButton = questions[questionNumber].answers[button.tag]
            button.resetToDefault()
            button.setTitle(titleButton, for: .normal)
            button.isEnabled = true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let finalVC = segue.destination as? FinalScreenViewController else { return }
        finalVC.score = self.score
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
