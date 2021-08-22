//
//  ViewController.swift
//  HomeWork2.2
//
//  Created by Olesya Koroleva on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
        
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 10
        
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    @IBAction func redValueAction() {
        let color = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        viewColor.backgroundColor = color
        redValueLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    
    @IBAction func greenValueAction() {
        
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)

        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueValueAction() {
        
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    
}
