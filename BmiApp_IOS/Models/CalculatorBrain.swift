//
//  CalculatorBrain.swift
//  BmiApp_IOS
//
//  Created by Harsh Kumar on 22/07/24.
//

import Foundation
import UIKit
var BMI : Float=0.0
struct CalculatorBrain {
    ///???This will calculate the BMI
    func calculateBMI(height:Float , weight:Float) -> Float{
         BMI=weight/(height*height)
        return BMI
    }
    ////? This will format the calculated BMI in Correct form 
    func getBMIValue () -> String{
        let CorrrectBMIFORM=String(format:"%.1f",BMI)
        return CorrrectBMIFORM
    }
    
}
