//
//  FacultyCell.swift
//  assignment6-swu-faculties
//
//  Created by Parinya Termkasipanich on 28/10/2565 BE.
//

import UIKit

class FacultyCell: UITableViewCell {

    @IBOutlet weak var facultyImage: UIImageView!
    @IBOutlet weak var facultyName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(name:String, Image:String){
        facultyName.text = name
        facultyImage.image = UIImage.init(named: Image)
    }

}
