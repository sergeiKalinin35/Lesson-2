//
//  ViewController.swift
//  Lesson 2
//
//  Created by Sergey Kalinin on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 20
    }
    
    func changeColor() {
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    @IBAction func redGreenBlueSliderChanged(_ sender: UISlider) {
        
        redLabelValue.text = String(format: "%.2f", redSlider.value )
        greenLabelValue.text = String(format: "%.2f", greenSlider.value)
        blueLabelValue.text = String(format: "%.2f", blueSlider.value)
        
        changeColor()

    }
    
}





