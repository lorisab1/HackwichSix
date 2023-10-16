//
//  secondViewController.swift
//  HackwichSix
//
//  Created by Lorisa Bulosan on 10/10/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var placesToTravelArray = ["Japan", "South Korea", "Canada"]
    
    var placesToTravelCityArray = ["Osaka", "Seoul", "Toronto"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placesToTravelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = placesToTravelArray[indexPath.row]
        cell.detailTextLabel?.text = placesToTravelCityArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
