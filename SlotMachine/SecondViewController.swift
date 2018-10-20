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
    @IBOutlet var image6 : UIImageView!
    @IBOutlet var image7 : UIImageView!
    @IBOutlet var image8 : UIImageView!
    @IBOutlet var image9 : UIImageView!
    @IBOutlet var image10 : UIImageView!
    @IBOutlet var image11 : UIImageView!
    @IBOutlet var image12 : UIImageView!
    @IBOutlet var image13 : UIImageView!
    @IBOutlet var image14 : UIImageView!
    @IBOutlet var image15 : UIImageView!
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "Orange-512"), #imageLiteral(resourceName: "Grapes-512"), #imageLiteral(resourceName: "power-stars-f1"), #imageLiteral(resourceName: "Bananas-512"), #imageLiteral(resourceName: "Strawberry-512"),#imageLiteral(resourceName: "Cherry-512"), #imageLiteral(resourceName: "51dMi2iYAVL")]
    @IBOutlet var labelForLines : UILabel!
    @IBOutlet var coins : UILabel!
    var totalCoins : Int = 5000
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        imageView.image = imageArray[randomIndex]
    }
    
  
    @IBAction func spin () {
        totalCoins = Int(coins.text!)!
        if totalCoins < 100 {
            ////
        }
        createAnimationImage(imageView: image1)
        createAnimationImage(imageView: image2)
        createAnimationImage(imageView: image3)
        createAnimationImage(imageView: image4)
        createAnimationImage(imageView: image5)
        createAnimationImage(imageView: image6)
        createAnimationImage(imageView: image7)
        createAnimationImage(imageView: image8)
        createAnimationImage(imageView: image9)
        createAnimationImage(imageView: image10)
        createAnimationImage(imageView: image11)
        createAnimationImage(imageView: image12)
        createAnimationImage(imageView: image13)
        createAnimationImage(imageView: image14)
        createAnimationImage(imageView: image15)
        
        if (labelForLines.text == "1"){
            totalCoins = totalCoins - 100
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            coins.text = String (totalCoins)
        }
        
        if (labelForLines.text == "2"){
            totalCoins = totalCoins - 200
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            coins.text = String (totalCoins)
        }
        if (labelForLines.text == "3"){
            totalCoins = totalCoins - 300
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            coins.text = String (totalCoins)
            
        }
        if (labelForLines.text == "4"){
            totalCoins = totalCoins - 400
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            coins.text = String (totalCoins)
        }
        if (labelForLines.text == "5"){
            totalCoins = totalCoins - 500
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            coins.text = String (totalCoins)
            
        }
        if (labelForLines.text == "6"){
            totalCoins = totalCoins - 600
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image10)
            coins.text = String (totalCoins)
            
        }
        
        if (labelForLines.text == "7"){
            totalCoins = totalCoins - 700
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image10)
            coins.text = String (totalCoins)
            
        }
        if (labelForLines.text == "8"){
            totalCoins = totalCoins - 800
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image8, imageView4: image4, imageView5: image5)
            coins.text = String (totalCoins)
            
        }
        
        if (labelForLines.text == "9"){
            totalCoins = totalCoins - 900
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image6, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image10)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image8, imageView4: image4, imageView5: image5)
            totalCoins = totalCoins + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image8, imageView4: image14, imageView5: image15)
            coins.text = String (totalCoins)
        }
    }
    
    @IBAction func increaseNumberOfLines(){
        var lines:Int = Int(labelForLines.text!)!
        lines = lines + 1
        if lines >= 9 {
            lines = 9
        }
        labelForLines.text = String (lines)
        
    }
    
    @IBAction func decreaseNumberOfLines(){
        var lines:Int = Int(labelForLines.text!)!
        lines = lines - 1
        if lines <= 1 {
            lines = 1
        }
        labelForLines.text = String (lines)
        
    }
    func checkSameImagesInLine (imageView1: UIImageView, imageView2: UIImageView ,imageView3: UIImageView,
                                imageView4: UIImageView, imageView5: UIImageView) -> Int{
        var prize : Int = 0
        if (imageView1 == imageView2 && imageView2 == imageView3 && imageView3 == imageView4 && imageView4 == imageView5){
            if imageView1 == imageArray [0] {
                prize = 150
            }
            if imageView1 == imageArray [1] {
                prize = 200
            }
            if imageView1 == imageArray [2] {
                prize = 750
            }
            if imageView1 == imageArray [3] {
                prize = 210
            }
            if imageView1 == imageArray [4] {
                prize = 80
            }
            if imageView1 == imageArray [5] {
                prize = 450
            }
            if imageView1 == imageArray [6] {
                prize = 1500
            }
        } else if ((imageView1 == imageView2 && imageView2 == imageView3 && imageView3 == imageView4 && imageView4 != imageView5) || (imageView1 != imageView2 && imageView2 == imageView3 && imageView3 == imageView4 && imageView4 == imageView5)){
            if imageView2 == imageArray [0] {
                prize = 100
            }
            if imageView2 == imageArray [1] {
                prize = 150
            }
            if imageView2 == imageArray [2] {
                prize = 500
            }
            if imageView2 == imageArray [3] {
                prize = 140
            }
            if imageView2 == imageArray [4] {
                prize = 40
            }
            if imageView2 == imageArray [5] {
                prize = 300
            }
            if imageView2 == imageArray [6] {
                prize = 1000
            }
        }else if ((imageView1 == imageView2 && imageView2 == imageView3 && imageView3 != imageView4 && imageView3 != imageView5) || (imageView1 != imageView2 && imageView2 == imageView3 && imageView3 == imageView4 && imageView3 != imageView5) || (imageView1 != imageView2 && imageView2 != imageView3 && imageView3 == imageView4 && imageView3 == imageView5)){
            if imageView2 == imageArray [0] {
                prize = 50
            }
            if imageView2 == imageArray [1] {
                prize = 100
            }
            if imageView2 == imageArray [2] {
                prize = 250
            }
            if imageView2 == imageArray [3] {
                prize = 70
            }
            if imageView2 == imageArray [4] {
                prize = 20
            }
            if imageView2 == imageArray [5] {
                prize = 150
            }
            if imageView2 == imageArray [6] {
                prize = 500
            }
        } else {
            prize = 0
        }
        return prize
    }
}
