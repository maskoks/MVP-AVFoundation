//
//  ViewController.swift
//  MVP+AVFoundation
//
//  Created by Жеребцов Данил on 31.08.2021.
//

import UIKit

class ViewController: UIViewController{
    
    let data = StoredData()
    let presenter = Presenter()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
    }

}

