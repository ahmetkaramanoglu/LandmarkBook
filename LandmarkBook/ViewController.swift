//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ahmet Karamanoğlu on 10.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    @IBOutlet weak var tableview: UITableView!
    
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        
        landmarkNames.append("Rize")
        landmarkNames.append("İstanbul")
        landmarkNames.append("Çorum")
        
        landmarkImages.append(UIImage(named: "rize")!)
        landmarkImages.append(UIImage(named: "istanbul")!)
        landmarkImages.append(UIImage(named: "corum")!)
        
        navigationItem.title = "Landmark Book"

    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableview.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Seçilen indexi VC değişmeden öğreniyoruz.
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "toImageVC", sender: nil)
            
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toImageVC"{
            let destination = segue.destination as! imageViewController
            destination.tempLabel = landmarkNames[selectedIndex]
            destination.tempImage = landmarkImages[selectedIndex]
        }
        
    }


}

