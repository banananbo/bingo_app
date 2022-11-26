//
//  ViewController.swift
//  CalcBMI
//
//  Created by obana.takenori on 2022/11/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var HightTextField: UITextField!
    @IBOutlet weak var WeightTextField: UITextField!
    @IBOutlet weak var BMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        HightTextField.placeholder = "身長をcmで入力してください"
        WeightTextField.placeholder = "体重をkgで入力してください"
    }
    @IBAction func CalcButtonAction(_ sender: Any) {
        let doubleH = Double(HightTextField.text!)
        let doubleW = Double(WeightTextField.text!)
        BMILabel.text = calucration(height:doubleH!, weight:doubleW!)
    }
        
    
    func calucration(height:Double, weight:Double) -> String {
        let h = height/100
        let w = weight
        var result = w/(h*h)
        result = floor(result * 10) / 10
        return result.description
    }
    

}

