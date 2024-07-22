//
//  ResultViewController.swift
//  BmiApp_IOS
//
//  Created by Harsh Kumar on 22/07/24.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var BMIVIEW: UILabel!
    var bmivalue : String?
    override func viewDidLoad() {  // Add all operational code here
        super.viewDidLoad()
        BMIVIEW.text=bmivalue
     
        
    }
    
    
    @IBAction func RecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil) //? This will dismiss the screen when we click recalculate button and will transport us back to previous screen
    }
    @IBOutlet var BMIResult: UILabel!
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view 
controller.*/
   

}




