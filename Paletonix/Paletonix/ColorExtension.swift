//
//  ColorExtension.swift
//  Paletonix
//
//  Created by Lucas Gabriel Nascimento Miranda on 21/07/15.
//  Copyright (c) 2015 Nettwork. All rights reserved.
//

import UIKit

extension UIColor
{
    convenience init(red: UInt8, green: UInt8, blue: UInt8)
    {
        let RED = CGFloat(red)/255
        let GREEN = CGFloat(green)/255
        let BLUE = CGFloat(blue)/255
        
        self.init(red: RED, green: GREEN, blue: BLUE, alpha: 1.0)
    }
}
