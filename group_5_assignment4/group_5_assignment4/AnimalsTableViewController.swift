//
//  AnimalsTableViewController.swift
//  group_5_assignment4
//
//  Created by Jeffrey Cordes on 3/1/20.
//  Copyright © 2020 Jeffrey Cordes. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {


    @IBOutlet weak var AnimalImage: UIImageView!
    
    @IBOutlet weak var AnimalLabel: UILabel!
}

class AnimalDescriptionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ScientificNameData: UILabel!
    
    @IBOutlet weak var ClassData: UILabel!
    
    @IBOutlet weak var WeightData: UILabel!
}

class AnimalsTableViewController: UITableViewController {
    
    let animals = [Animal(commonName: "Red Tabby", scientificName: "Felis Catus", animalClass: "Mammalia", averageSize: 4, defaultImage: "Tabby_1"),
                   Animal(commonName: "German Shepherd", scientificName: "Canis Lupus Familiaris", animalClass: "Mammalia", averageSize: 30, defaultImage: "GermanShepherd_1"),
                   Animal(commonName: "Parakeet", scientificName: "Melopsittacus Undulatus", animalClass: "Aves", averageSize: 0.03, defaultImage: "Parakeet_1"),
                   Animal(commonName: "Bearded Dragon", scientificName: "Pogona", animalClass: "Reptilia", averageSize: 0.35, defaultImage: "BeardedDragon_1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animals.count * 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row % 2 == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalTableViewCell

            // Configure the cell...
            let currentAnimal = animals[indexPath.row / 2]
            cell.AnimalLabel?.text = currentAnimal.name
            cell.AnimalImage?.image = UIImage(named: currentAnimal.defaultImage!)

            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionCell", for: indexPath) as! AnimalDescriptionTableViewCell
            
            let currentDescription = animals[(indexPath.row - 1) / 2]
            cell.ScientificNameData?.text = currentDescription.scientificName
            cell.ClassData?.text = currentDescription.animalClass
            cell.WeightData?.text = "\(currentDescription.size!) kg"
            
            return cell
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
