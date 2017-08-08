//
//  ViewController.swift
//  changeColor
//
//  Created by MEI KU on 2017/8/3.
//  Copyright © 2017年 Natalie KU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var mikuBackGround: UIImageView!
    @IBOutlet weak var eyeColorView: UIImageView!
    @IBOutlet weak var miraiView: UIImageView!
    @IBAction func colorValueChange(_ sender: Any) {
        mikuBackGround.isHidden = true
        miraiView.isHidden = false
    
        eyeColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBAction func redswitch(_ sender: Any) {
       if redSwitch.isOn == false {
            redSlider.isEnabled = false
        }
        if greenSwitch.isOn == false {
            greenSlider.isEnabled = false
        }
            
        if blueSwitch.isOn == false {
            blueSlider.isEnabled = false
    }
        
        
    }
    
    @IBAction func sendButton(_ sender: Any) {
        
    redSwitch.isOn = true
    greenSwitch.isOn = true
    blueSwitch.isOn = true
    redSlider.value = 0.5
    blueSlider.value = 0.5
    greenSlider.value = 0.5
        redSlider.isEnabled = true
        blueSlider.isEnabled = true
        greenSlider.isEnabled = true
        eyeColorView.backgroundColor = UIColor(red:255, green:255, blue:255, alpha: 1)
     mikuBackGround.isHidden = false
        miraiView.isHidden = true
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

