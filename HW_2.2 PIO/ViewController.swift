//
//  ViewController.swift
//  HW_2.2 PIO
//
//  Created by Igor on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redText.text = "Red:"
        redText.textColor = .white

        greenText.text = "Green:"
        greenText.textColor = .white

        blueText.text = "Blue:"
        blueText.textColor = .white

        redLabel.textColor = .white
        greenLabel.textColor = .white
        blueLabel.textColor = .white


        viewColor.backgroundColor = .white
        viewColor.layer.cornerRadius = 20

redSlider.minimumTrackTintColor = .red
redSlider.maximumTrackTintColor = .black
redSlider.thumbTintColor = .white

greenSlider.minimumTrackTintColor = .green
greenSlider.maximumTrackTintColor = .black
greenSlider.thumbTintColor = .white

blueSlider.minimumTrackTintColor = .blue
blueSlider.maximumTrackTintColor = .black
blueSlider.thumbTintColor = .white

redSlider.minimumValue = 0
redSlider.maximumValue = 1

        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1

blueSlider.minimumValue = 0
blueSlider.maximumValue = 1
        
    }
    
    func changedColor(){
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redSliderChanged(_ sender: Any) {
        changedColor()
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderChanged(_ sender: Any) {
        changedColor()
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderChanged(_ sender: Any) {
        changedColor()
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}
