//
//  ViewController.swift
//  Guessing Game
//
//  Created by Anish Laddha on 2/24/18.
//  Copyright © 2018 Anish Laddha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func GoButton(_ sender: UIButton) {
            let x = Int(NumberGuessed.text!)!
            print(String(y))
            if i > 0{
            if x > y{
                HighLow.text = "Too High"
                TryLeftView.text = String(i)
                NumberGuessed.text = ""
                i = i-1
            }
            else if x < y{
                HighLow.text = "Too Low"
                TryLeftView.text = String(i)
                NumberGuessed.text = ""
                i = i-1
            }
            else if x == y{
                HighLow.text = "Correct!"
                TryLeftView.text = String(i)
                AnswerView.text = String(y)
                sender.isEnabled = false
                NumberGuessed.text = ""
            }
            }else{
                sender.isEnabled = false
                TryLeftView.text = "0"
                AnswerView.text = String(y)
                NumberGuessed.text = ""
        }
        
    }
    
    @IBAction func ResetButton(_ sender: Any) {
        y = Int(arc4random_uniform(101))
        i = 5
        TryLeftView.text = String(i)
        GoOutlet.isEnabled = true
        NumberGuessed.text = ""

    }
    @IBOutlet weak var GoOutlet: UIButton!
    @IBOutlet weak var NumberGuessed: UITextField!
    
    @IBOutlet weak var HighLow: UILabel!
    @IBOutlet weak var TryLeftView: UILabel!
    @IBOutlet weak var AnswerView: UILabel!
    
    var y = Int(arc4random_uniform(101))
    var i = 5

    override func viewDidLoad() {
        TryLeftView.text = "5"
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: Selector("endEditing:")))

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

