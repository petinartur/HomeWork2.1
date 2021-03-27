//
//  ViewController.swift
//  HomeWork2.1
//
//  Created by Артур Петин on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mixView: UIView!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }
    @IBAction func updateRedSlider(_ sender: UISlider) {
        updateColor()
        labelRed.text = String(redSlider.value)
    }
    @IBAction func updateBlueSlider(_ sender: UISlider) {
        updateColor()
        labelBlue.text = String(blueSlider.value)
    }
    @IBAction func updateGreenSlider(_ sender: UISlider) {
        updateColor()
        labelBlue.text = String(greenSlider.value)
    }
    
    func updateColor(){
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        red = CGFloat(redSlider.value)
        green = CGFloat(greenSlider.value)
        blue = CGFloat(blueSlider.value)
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mixView.backgroundColor = color
        
    }
}

