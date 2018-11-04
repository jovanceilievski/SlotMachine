//
//  ViewController.swift
//  SlotMachine
//
//  Created by Jovance Ilievski on 10/5/18.
//  Copyright © 2018 Jovance Ilievski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "Orange-512"), #imageLiteral(resourceName: "Grapes-512"), #imageLiteral(resourceName: "power-stars-f1"), #imageLiteral(resourceName: "Bananas-512"), #imageLiteral(resourceName: "Strawberry-512"),#imageLiteral(resourceName: "Cherry-512"), #imageLiteral(resourceName: "51dMi2iYAVL")]
    var imageArraySecond : [UIImage] = [#imageLiteral(resourceName: "cherry-clipart-slot-machine-6"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "images")]
    var imageArrayThird : [UIImage] = [#imageLiteral(resourceName: "extra-stars-slot-game"), #imageLiteral(resourceName: "extra-stars-slot-game"), #imageLiteral(resourceName: "extra-stars-slot-game"), #imageLiteral(resourceName: "extra-stars-slot-game"), #imageLiteral(resourceName: "extra-stars-slot-game"),#imageLiteral(resourceName: "extra-stars-slot-game"), #imageLiteral(resourceName: "extra-stars-slot-game")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Fruits"{
            if let destinacija:SecondViewController = segue.destination as? SecondViewController{
                destinacija.temaVoVtoriot = Theme(bojaNapozadina: UIColor.black, images : imageArray)
            }
        }
        if segue.identifier == "Letters"{
            if let destinacija:SecondViewController = segue.destination as? SecondViewController{
                destinacija.temaVoVtoriot = Theme(bojaNapozadina: UIColor.white, images: imageArraySecond)
            }
        }
        if segue.identifier == "Animals"{
            if let destinacija:SecondViewController = segue.destination as? SecondViewController{
                destinacija.temaVoVtoriot = Theme(bojaNapozadina: UIColor.green, images: imageArrayThird)
            }
        }
    }

}

