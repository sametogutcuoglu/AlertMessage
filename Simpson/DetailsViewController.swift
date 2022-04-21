//
//  DetailsViewController.swift
//  Simpson
//
//  Created by macOS on 18.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedJobs = ""
    var selectedName = ""
    var selectedImage = UIImage()

    @IBOutlet weak var lblJobs: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblJobs.text = selectedJobs
        lblName.text = selectedName
        imageView.image = selectedImage


    }
    



}
