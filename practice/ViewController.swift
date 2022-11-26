//
//  ViewController.swift
//  practice
//
//  Created by obana.takenori on 2022/11/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func DogButton(_ sender: Any) {
        Label.text = "ワンワン"
    }
    @IBAction func CatButton(_ sender: Any) {
        Label.text = "にゃーにゃー"
        
    }
    @IBAction func FrogButton(_ sender: Any) {
        Label.text = "ゲロゲロ"
    }
}

