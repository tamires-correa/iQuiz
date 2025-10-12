//
//  WorkTableViewCell.swift
//  iQuiz
//
//  Created by Tamires Corrêa on 12/10/25.
//

import UIKit

class WorkTableViewCell: UITableViewCell{
    
    @IBOutlet weak var workImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        selectionStyle = .none
    }
    
    override func layoutSubviews() {
          super.layoutSubviews()
    
          for subview in subviews {
              subview.backgroundColor = .clear
          }
      }
    
    func configure(with work: Works) {
        workImageView.image = UIImage(named: work.imageName)
        nameLabel.text = work.name
        yearLabel.text = String(work.year)
    }
}
