//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Ahmet Karamanoğlu on 11.02.2022.
//

import UIKit

class imageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    var tempLabel = ""
    var tempImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageLabel.text = tempLabel
        imageView.image = tempImage
        
        
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
