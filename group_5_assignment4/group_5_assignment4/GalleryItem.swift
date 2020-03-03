//
//  GalleryItem.swift
//  group_5_assignment4
//
//  Created by Jeffrey Cordes on 3/3/20.
//  Copyright © 2020 Jeffrey Cordes. All rights reserved.
//

import Foundation

class GalleryItem {
    private var _label:String?
    private var _image:String?
    
    init (label: String, image: String) {
        self._label = label
        self._image = image
    }
    
    var label:String? {
        get {
            return _label
        }
        
        set (newLabel) {
            _label = newLabel
        }
    }
    
    var image: String? {
        get {
            return _image
        }
        set (newImage) {
            _image = newImage
        }
    }
    
}
