//
//  Theme.swift
//  SlotMachine
//
//  Created by Tanja Perchuklievska on 11/3/18.
//  Copyright © 2018 Jovance Ilievski. All rights reserved.
//

import UIKit

class Theme: NSObject {
    
    var backgroundColor : UIColor!
    var immageArray : [UIImage]!
    
    init (bojaNapozadina: UIColor , images : [UIImage]){
        backgroundColor = bojaNapozadina
        immageArray = images
    }
    

}

