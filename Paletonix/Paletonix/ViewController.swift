//
//  ViewController.swift
//  Paletonix
//
//  Created by Lucas Gabriel Nascimento Miranda on 21/07/15.
//  Copyright (c) 2015 Nettwork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var lblBlue: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var lblGreen: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var lblHex: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mudarCor(sender: UISlider) {
        
        var red = UInt8(redSlider.value)
        var blue = UInt8(blueSlider.value)
        var green = UInt8(greenSlider.value)
        
        lblBlue.text = "Blue: \(Int(blueSlider.value))"
        lblGreen.text = "Green: \(Int(greenSlider.value))"
        lblRed.text = "Red: \(Int(redSlider.value))"
        
        redSlider.thumbTintColor = UIColor(red: red, green: 0, blue: 0)
        blueSlider.thumbTintColor = UIColor(red: 0, green: 0, blue: blue)
        greenSlider.thumbTintColor = UIColor(red: 0, green: green, blue: 0)
        
        var cor = UIColor(red: red, green: green, blue: blue)
        
        colorView.backgroundColor = cor
        
        var hexRed = (red >= 0 && red <= 15) ? ("0" + String(format:"%X", Int(red))) : String(format:"%X", Int(red))
        var hexGreen = (green >= 0 && green <= 15) ? ("0" + String(format:"%X", Int(green))) : String(format:"%X", Int(green))
        var hexBlue = (blue >= 0 && blue <= 15) ? ("0" + String(format:"%X", Int(blue))) : String(format:"%X", Int(blue))
        
        lblHex.text = "Hex: #" + hexRed + hexGreen + hexBlue
        
    }

    
}

