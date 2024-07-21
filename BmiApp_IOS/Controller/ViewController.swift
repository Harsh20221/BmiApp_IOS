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
        ////*We are Calculating The Bmi Here
        let height = Heightslider.value
        let weight=WeightSlider.value
        let BMI=weight/pow(2, height)
        self.performSegue(withIdentifier: "goToScreen", sender: self ) //This is segueway initialisation to go to next screen
        
        
        func prepare(for segue: UIStoryboardSegue,sender:Any?){
            if segue.identifier == "goToResult"{
                let destinationVC = segue
                    .destination as! ResultViewController
                destinationVC.bmivalue=String(BMI)
            }
        }
    }
}
