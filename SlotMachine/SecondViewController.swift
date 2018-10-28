//
//  SecondViewController.swift
//  SlotMachine
//
//  Created by CodeWell on 10/15/18.
//  Copyright © 2018 Jovance Ilievski. All rights reserved.
//

import UIKit
import AVFoundation
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
    @IBOutlet var coins : UILabel!
    @IBOutlet var valuesForBetting : UISegmentedControl!
    @IBOutlet var winLabel : UILabel!
    @IBOutlet var labelForGoodLuck : UILabel!
    var imageArray : [UIImage] = [#imageLiteral(resourceName: "Orange-512"), #imageLiteral(resourceName: "Grapes-512"), #imageLiteral(resourceName: "power-stars-f1"), #imageLiteral(resourceName: "Bananas-512"), #imageLiteral(resourceName: "Strawberry-512"),#imageLiteral(resourceName: "Cherry-512"), #imageLiteral(resourceName: "51dMi2iYAVL")]
    var betValue : Int!
    var selectedIndex : Int!
    var win : Int!
    var totalCoins : Int = 5000
    var musicEffect : AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let musicFile = Bundle.main.path(forResource: "spin", ofType: ".mp3")
        do {
            try musicEffect = AVAudioPlayer( contentsOf: URL (fileURLWithPath: musicFile!))
        }
        catch {
            print (error)
        }          // Do any additional setup after loading the view.
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
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
        let randomIndex = Int (arc4random_uniform(UInt32(imageArray.count)))
        imageView.image = imageArray[randomIndex]
    }
    
  
    @IBAction func spin () {
        totalCoins = Int(coins.text!)!
        if totalCoins < 100 {
            ////
        }
        winLabel.text = ""
        musicEffect.play()
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
        
        if (valuesForBetting.titleForSegment(at: 0) == "1"){
            selectedIndex = valuesForBetting.selectedSegmentIndex
            betValue = Int (valuesForBetting.titleForSegment(at: selectedIndex)!)
            totalCoins =  totalCoins - betValue
            coins.text = String (totalCoins)
            win = betValue * checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
           
        }
        
        if (valuesForBetting.titleForSegment(at: 0) == "3"){
            selectedIndex = valuesForBetting.selectedSegmentIndex
            betValue = Int (valuesForBetting.titleForSegment(at: selectedIndex)!)
            totalCoins =  totalCoins - betValue
            coins.text = String (totalCoins)
            win = checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            win = win * betValue

        }
        
        if (valuesForBetting.titleForSegment(at: 0) == "5"){
            selectedIndex = valuesForBetting.selectedSegmentIndex
            betValue = Int (valuesForBetting.titleForSegment(at: selectedIndex)!)
            totalCoins =  totalCoins - betValue
            coins.text = String (totalCoins)
            win = checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            win = win * betValue
          
        }
        
        if (valuesForBetting.titleForSegment(at: 0) == "7"){
            selectedIndex = valuesForBetting.selectedSegmentIndex
            betValue = Int (valuesForBetting.titleForSegment(at: selectedIndex)!)
            totalCoins =  totalCoins - betValue
            coins.text = String (totalCoins)
            win = checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image6, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image6, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image10)
            win = win * betValue
          
        }
        if (valuesForBetting.titleForSegment(at: 0) == "9"){
            selectedIndex = valuesForBetting.selectedSegmentIndex
            betValue = Int (valuesForBetting.titleForSegment(at: selectedIndex)!)
            totalCoins =  totalCoins - betValue
            coins.text = String (totalCoins)
            win = checkSameImagesInLine(imageView1: image6, imageView2: image7, imageView3: image8, imageView4: image9, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image15)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image7, imageView3: image13, imageView4: image9, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image7, imageView3: image3, imageView4: image9, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image6, imageView2: image12, imageView3: image13, imageView4: image14, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image6, imageView2: image2, imageView3: image3, imageView4: image4, imageView5: image10)
            win = win + checkSameImagesInLine(imageView1: image11, imageView2: image12, imageView3: image8, imageView4: image4, imageView5: image5)
            win = win + checkSameImagesInLine(imageView1: image1, imageView2: image2, imageView3: image8, imageView4: image14, imageView5: image15)
            win = win * betValue
        
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.winLabel.text = String (self.win)
            self.totalCoins = self.totalCoins + self.win
            self.coins.text = String (self.totalCoins)
        }
        
      
    }
    
    @IBAction func fillSegmentedControlForOne () {
        valuesForBetting.setTitle("1", forSegmentAt: 0)
        valuesForBetting.setTitle("2", forSegmentAt: 1)
        valuesForBetting.setTitle("5", forSegmentAt: 2)
        valuesForBetting.setTitle("10", forSegmentAt: 3)
        valuesForBetting.setTitle("20", forSegmentAt: 4)
    }
    
    @IBAction func fillSegmentedControlForThree () {
        valuesForBetting.setTitle("3", forSegmentAt: 0)
        valuesForBetting.setTitle("6", forSegmentAt: 1)
        valuesForBetting.setTitle("15", forSegmentAt: 2)
        valuesForBetting.setTitle("30", forSegmentAt: 3)
        valuesForBetting.setTitle("60", forSegmentAt: 4)
    }
    
    @IBAction func fillSegmentedControlForFive() {
        valuesForBetting.setTitle("5", forSegmentAt: 0)
        valuesForBetting.setTitle("10", forSegmentAt: 1)
        valuesForBetting.setTitle("25", forSegmentAt: 2)
        valuesForBetting.setTitle("50", forSegmentAt: 3)
        valuesForBetting.setTitle("100", forSegmentAt: 4)
    }
    
    @IBAction func fillSegmentedControlForSeven() {
        valuesForBetting.setTitle("7", forSegmentAt: 0)
        valuesForBetting.setTitle("14", forSegmentAt: 1)
        valuesForBetting.setTitle("35", forSegmentAt: 2)
        valuesForBetting.setTitle("70", forSegmentAt: 3)
        valuesForBetting.setTitle("140", forSegmentAt: 4)
    }
    
    @IBAction func fillSegmentedControlForNine() {
        valuesForBetting.setTitle("9", forSegmentAt: 0)
        valuesForBetting.setTitle("18", forSegmentAt: 1)
        valuesForBetting.setTitle("45", forSegmentAt: 2)
        valuesForBetting.setTitle("90", forSegmentAt: 3)
        valuesForBetting.setTitle("180", forSegmentAt: 4)
    }
    
    func checkSameImagesInLine (imageView1: UIImageView, imageView2: UIImageView ,imageView3: UIImageView,
                                imageView4: UIImageView, imageView5: UIImageView) -> Int{
        var prize : Int = 0
        if (imageView1.image == imageView2.image && imageView2.image == imageView3.image && imageView3.image == imageView4.image && imageView4.image == imageView5.image){
        
            if imageView1.image == imageArray [0] {
                prize = 150
            }
            if imageView1.image == imageArray [1] {
                prize = 200
            }
            if imageView1.image == imageArray [2] {
                prize = 750
            }
            if imageView1.image == imageArray [3] {
                prize = 210
            }
            if imageView1.image == imageArray [4] {
                prize = 80
            }
            if imageView1.image == imageArray [5] {
                prize = 450
            }
            if imageView1.image == imageArray [6] {
                prize = 1500
            }
        } else if ((imageView1.image == imageView2.image && imageView2.image == imageView3.image && imageView3.image == imageView4.image && imageView4.image != imageView5.image) || (imageView1.image != imageView2.image && imageView2.image == imageView3.image && imageView3.image == imageView4.image && imageView4.image == imageView5.image)){
            
            if imageView2.image == imageArray [0] {
                prize = 100
            }
            if imageView2.image == imageArray [1] {
                prize = 150
            }
            if imageView2.image == imageArray [2] {
                prize = 500
            }
            if imageView2.image == imageArray [3] {
                prize = 140
            }
            if imageView2.image == imageArray [4] {
                prize = 40
            }
            if imageView2.image == imageArray [5] {
                prize = 300
            }
            if imageView2.image == imageArray [6] {
                prize = 1000
            }
        }else if ((imageView1.image == imageView2.image && imageView2.image == imageView3.image && imageView3.image != imageView4.image && imageView3.image != imageView5.image) || (imageView1.image != imageView2.image && imageView2.image == imageView3.image && imageView3.image == imageView4.image && imageView3.image != imageView5.image) || (imageView1.image != imageView3.image && imageView2.image != imageView3.image && imageView3.image == imageView4.image && imageView3.image == imageView5.image)){
    
            if imageView3.image == imageArray [0] {
                prize = 50
            }
            if imageView3.image == imageArray [1] {
                prize = 100
            }
            if imageView3.image == imageArray [2] {
                prize = 250
            }
            if imageView3.image == imageArray [3] {
                prize = 70
            }
            if imageView3.image == imageArray [4] {
                prize = 20
            }
            if imageView3.image == imageArray [5] {
                prize = 150
            }
            if imageView3.image == imageArray [6] {
                prize = 500
            }
        } else {
            prize = 0
        }
        return prize
    }
}
