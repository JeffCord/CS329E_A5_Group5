//
//  Animal.swift
//  group_5_assignment4
//
//  Created by Jeffrey Cordes on 2/28/20.
//  Copyright © 2020 Jeffrey Cordes. All rights reserved.
//

import Foundation

class Animal {
    private var _name:String?
    private var _scientificName:String?
    private var _animalClass:String?
    private var _size:Float?  // in terms of weight
    private var _defaultImage:String?
    
    init (commonName: String, scientificName: String,animalClass: String, averageSize: Float, defaultImage: String) {
        self._name = commonName
        self._scientificName = scientificName
        self._animalClass = animalClass
        self._size = averageSize // this will represent the animal's weight in kg
        self._defaultImage = defaultImage
    }
    
    var name: String? {
        get {
            return _name
        }
        set (newName) {
            _name = newName
        }
    }
    
    var scientificName: String? {
        get {
            return _scientificName
        }
        set (newScientificName) {
            _scientificName = newScientificName
        }
    }
    
    var animalClass: String? {
        get {
            return _animalClass
        }
        set (newAnimalClass) {
            _animalClass = newAnimalClass
        }
    }
    
    var size:Float? {
        get {
            return _size
        }
        set (newSize) {
            _size = newSize
        }
    }
    
    var defaultImage: String? {
        get {
            return _defaultImage
        }
        set (newDefaultImage) {
            _defaultImage = newDefaultImage
        }
    }
}

