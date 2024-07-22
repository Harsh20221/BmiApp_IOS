//
//  CalculatorBrain.swift
//  BmiApp_IOS
//
//  Created by Harsh Kumar on 22/07/24.
//

import Foundation
import UIKit
var BMI : BMIMODEL?
struct CalculatorBrain {
    ///???This will calculate the BMI
    mutating func calculateBMI(height:Float , weight:Float){
        /////!!! Make sure that BMI VALUE IS calculated in Floats only , Wrap every unit with Float 
        let bmivalue = Float(weight)/(Float(height)*Float(height))
        if  bmivalue<18.5{
            BMI=BMIMODEL(value:bmivalue,advice:"Eat More Pies!",color:UIColor.blue)
        }
        else if bmivalue < 24.9{
            BMI=BMIMODEL(value:bmivalue,advice:"Fit as Fiddle! ",color:UIColor.green)
        }
        else {
            BMI=BMIMODEL(value:bmivalue,advice:"Eat less Pies! ",color:UIColor.systemPink)
        }
    }
    ////? This will format the calculated BMI in Correct form
    func getBMIValue () -> String{
        let CorrrectBMIFORM=String(format:"%.1f",BMI?.value ?? 0.0)
        return CorrrectBMIFORM
    }
    
    func getBMICOLOR ()->UIColor{
        let UIcolor=BMI?.color
        return UIcolor!
    }
    
    func getBMIMessage()->String{
        let BMIMESSAGE=BMI?.advice
        return BMIMESSAGE!
        
        
    }
}
