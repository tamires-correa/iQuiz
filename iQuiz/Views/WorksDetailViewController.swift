//
//  WorksDetailViewController.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 12/10/25.
//

import UIKit

class WorksDetailViewController: UIViewController {

    @IBOutlet weak var workDetailImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var workDetail: WorksDetail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
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
