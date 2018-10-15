//
//  SecondViewController.swift
//  SlotMachine
//
//  Created by CodeWell on 10/15/18.
//  Copyright © 2018 Jovance Ilievski. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var image1 : UIImageView!
    @IBOutlet var image2 : UIImageView!
    @IBOutlet var image3 : UIImageView!
    @IBOutlet var image4 : UIImageView!
    @IBOutlet var image5 : UIImageView!
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "Orange-512"), #imageLiteral(resourceName: "51dMi2iYAVL"),#imageLiteral(resourceName: "Slot-Machine-Lemon-Stitched-5_5-Inch"), #imageLiteral(resourceName: "Grapes-512"), #imageLiteral(resourceName: "Bell-512"), #imageLiteral(resourceName: "power-stars-f1"), #imageLiteral(resourceName: "Bananas-512"), #imageLiteral(resourceName: "Strawberry-512"), #imageLiteral(resourceName: "pear09062012"), #imageLiteral(resourceName: "Cherry-512")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFirstRandomImage(){
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        image1.image = imageArray[randomIndex]
    }
    
    func getSecondRandomImage(){
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        image2.image = imageArray[randomIndex]
    }
    
    func getThirdRandomImage(){
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        image3.image = imageArray[randomIndex]
    }
    
    func getFourthRandomImage(){
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        image4.image = imageArray[randomIndex]
    }
    
    func getFifthRandomImage(){
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        image5.image = imageArray[randomIndex]
    }
    
    func createAnimationImage (imageView: UIImageView)  {
        var animatedArray : [UIImage] = []
        var counter = 0
        while counter < 20 {
            let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
            animatedArray.append(imageArray[randomIndex])
            counter = counter + 1
        }
        imageView.animationImages = animatedArray
        imageView.animationDuration = 2
        imageView.animationRepeatCount = 2
        imageView.startAnimating()
     
    }
    
    @IBAction func spin () {
        createAnimationImage(imageView: image1)
        createAnimationImage(imageView: image2)
        createAnimationImage(imageView: image3)
        createAnimationImage(imageView: image4)
        createAnimationImage(imageView: image5)
        getFirstRandomImage()
        getSecondRandomImage()
        getThirdRandomImage()
        getFourthRandomImage()
        getFifthRandomImage()
        
    }
}