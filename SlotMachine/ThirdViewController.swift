//
//  ThirdViewController.swift
//  SlotMachine
//
//  Created by Tanja Perchuklievska on 11/4/18.
//  Copyright © 2018 Jovance Ilievski. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController {
    @IBOutlet var image1 : UIImageView!
    @IBOutlet var image2 : UIImageView!
    @IBOutlet var image3 : UIImageView!
    @IBOutlet var image4 : UIImageView!
    @IBOutlet var image5 : UIImageView!
    @IBOutlet var image6 : UIImageView!
    @IBOutlet var image7 : UIImageView!
    var temaVoTretiot:Theme?
    var imageArray : [UIImage]!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray = (temaVoTretiot?.immageArray)!
        image1.image = imageArray [6]
        image2.image = imageArray [2]
        image3.image = imageArray [1]
        image4.image = imageArray [3]
        image5.image = imageArray [4]
        image6.image = imageArray [5]
        image7.image = imageArray [0]
        // Do any additional setup after loading the view.
    }
    

}
