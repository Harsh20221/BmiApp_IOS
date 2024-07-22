//
//  ViewController.swift
//  BMI Calculator

import UIKit

class ViewController: UIViewController {
    var BMIVALUE="0.0"
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
        let BMI=weight/(height*height)
        
        BMIVALUE=String(format:"%.1f",BMI)
        print(BMIVALUE)
        
        self.performSegue(withIdentifier: "goToScreen", sender: self ) //This is segueway initialisation to go to next screen
    } ///IMP!!!!!!-- MAKE SURE TO CLOSE THIS CALCULATE BUTTON THEN INITIALISE THE  PREPARE method else it will fail
    
        ////This prepare method kewwps track of correct segeway when you have multiple sageway from a single main screen
    ///!!! DO NOT forget to add Override before the prepare sender 
  override   func prepare(for segue: UIStoryboardSegue,sender:Any?){
            if segue.identifier == "goToScreen"{
                let destinationVC = segue
                    .destination as! ResultViewController 
                destinationVC.bmivalue=BMIVALUE
            }
        }
    }

