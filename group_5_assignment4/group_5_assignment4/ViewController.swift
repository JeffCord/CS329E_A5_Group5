//
//  ViewController.swift
//  group_5_assignment4
//
//  Created by Jeffrey Cordes on 2/28/20.
//  Copyright © 2020 Jeffrey Cordes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cat = Animal(commonName: "Red Tabby", scientificName: "Felis Catus", animalClass: "Mammalia", averageSize: 4)
    
    let dog = Animal(commonName: "German Shepherd", scientificName: "Canis Lupus Familiaris", animalClass: "Mammalia", averageSize: 30)
    
    let bird = Animal(commonName: "Parakeet", scientificName: "Melopsittacus Undulatus", animalClass: "Aves", averageSize: 0.03)
    
    let lizard = Animal(commonName: "Bearded Dragon", scientificName: "Pogona", animalClass: "Reptilia", averageSize: 0.35)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

