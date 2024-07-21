//
//  ViewController.swift
//  BMI Calculator

import UIKit

class ViewController: UIViewController {

    @IBOutlet var HeightLabel: UILabel!
    @IBOutlet var WeightSlider: UISlider!
    @IBOutlet var WeightLabel: UILabel!
    @IBOutlet var Heightslider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
///This Action is connected to both slders 
   
    @IBAction func HeightSlider(_ sender: UISlider) {
        HeightLabel.text=String(format:"%.0f",sender.value)
    }
    
    @IBAction func WeightSlider(_ sender: UISlider) {
        WeightLabel.text=String(format:"%.0f",sender.value)
    
    }
    
    @IBAction func CalculateButton(_ sender: UIButton) {
        ////We are Calculating The Bmi Here
            let height = Heightslider.value
            let weight=WeightSlider.value
            let BMI=weight/pow(2, height)
        
        let secondVc=SecondViewController()
        secondVc.bmivalue=String(format:"%.1f",BMI)
        self.present(secondVc,animated: true,completion: nil)
        
    }
    
    
    
    
}

