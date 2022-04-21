//
//  ViewController.swift
//  Simpson
//
//  Created by macOS on 18.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    

    var Simsons = [Simpson]()
    var chongeName = ""
    var chongJobs = ""
    var chongeImage = UIImage()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let Homer = Simpson(names: "HomerSimpson", Jobs: "Nukleer", images: UIImage(named: "HomerSimpson.jpg")!)
        
        let MargeSimpson = Simpson(names: "MargeSimpson", Jobs: "Home", images: UIImage(named: "MargeSimpson.jpg")!)
        
        let BartSimpson = Simpson(names: "BartSimpson", Jobs: "Student", images: UIImage(named: "BartSimpson.jpg")!)
        
        let LisaSimpson = Simpson(names: "LisaSimpson", Jobs: "Student", images: UIImage(named: "LisaSimpson.jpg")!)
        
        let MaggieSimpson = Simpson(names: "MaggieSimpson", Jobs: "Baby", images: UIImage(named: "MaggieSimpson.jpg")!)
        
        Simsons.append(Homer)
        Simsons.append(MargeSimpson)
        Simsons.append(BartSimpson)
        Simsons.append(LisaSimpson)
        Simsons.append(MaggieSimpson)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = Simsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  Simsons.count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chongeName = Simsons[indexPath.row].name
        chongJobs = Simsons[indexPath.row].job
        chongeImage = Simsons[indexPath.row].image

        performSegue(withIdentifier : "toDetailsViewController", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsViewController"{
            let destinotVC = segue.destination as! DetailsViewController
            destinotVC.selectedName = chongeName
            destinotVC.selectedJobs = chongJobs
            destinotVC.selectedImage = chongeImage
        }
    }
 
    
    


}

