//
//  ViewController.swift
//  ColorPalette
//
//  Created by peimin tsai on 2017/10/24.
//  Copyright © 2017年 perry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var redValue = 255
    var greenValue = 255
    var blusValue = 255
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBAction func redBar(_ sender: UISlider) {
        redValue = Int(sender.value)
        redLabel.text = "R:\(redValue)"
        changeColor()
    }
    @IBAction func greenBar(_ sender: UISlider) {
        greenValue = Int(sender.value)
        greenLabel.text = "G:\(greenValue)"
        changeColor()
    }
    @IBAction func blueBar(_ sender: UISlider) {
        blusValue  = Int(sender.value)
        blueLabel.text = "B:\(blusValue)"
        changeColor()
    }
    
    func changeColor(){
        view.backgroundColor = UIColor(red: CGFloat(redValue)/255.0, green: CGFloat(greenValue)/255.0, blue: CGFloat(blusValue)/255.0, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

