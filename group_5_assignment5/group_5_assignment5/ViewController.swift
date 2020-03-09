//
//  ViewController.swift
//  group_5_assignment4
//
//  Created by Yanbing Fang on 3/5/20.
//  Copyright © 2020 Jeffrey Cordes. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var tableData:[String:String] = [:]
    var plistKeyArray = [String]()
    var plistValueArray = [String]()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Do any additional setup after loading the view.
        let path = Bundle.main.path(forResource: "PList_1", ofType: "plist")!
        let dict = NSDictionary(contentsOfFile: path)
        tableData = dict!.object(forKey: "New item") as! [String:String]
        let lazyKeyCollection = tableData.keys
        plistKeyArray = Array(lazyKeyCollection)
        let lazyValueCollection = tableData.values
        plistValueArray = Array(lazyValueCollection)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return plistValueArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"Cell",for:indexPath) as! CollectionViewCell
        cell.animalImageView!.image = UIImage(named: plistKeyArray[indexPath.item])
        cell.animalLabel!.text = plistValueArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionFooter) {
        let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CartFooterCollectionReusableView", for: indexPath)
        // Customize footerView here
        footerView.backgroundColor = UIColor.black
        return footerView
        } else if (kind == UICollectionView.elementKindSectionHeader) {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CartHeaderCollectionReusableView", for: indexPath)
        // Customize headerView here
        headerView.backgroundColor = UIColor.black
        return headerView
    }
    fatalError()
    }
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
