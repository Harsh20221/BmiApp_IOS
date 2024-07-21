//
//  SecondViewController.swift
//  BmiApp_IOS
//
//  Created by Harsh Kumar on 21/07/24.
//
///This file only holds the structure of the second view screen whilke the actual screen will be defined in the view controller 
import Foundation
import UIKit

class SecondViewController :UIViewController{
    var bmivalue="";
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.red;
        let label = UILabel()
        label.text=bmivalue
        label.frame=CGRect(x: 0, y: 0, width: 100, height: 50) // Here we are making a view box
        view.addSubview(label) ///  A label is also termed or added as a subview that's why we have written subview here
    }
    
}
