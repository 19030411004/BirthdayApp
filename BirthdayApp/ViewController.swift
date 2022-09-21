//
//  ViewController.swift
//  BirthdayApp
//
//  Created by Fatmagül Demirbaş on 21.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var UserNameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func ButtonClicked(_ sender: Any) {
        
        
        birthdayLabel.text! = "Name: \(UserNameText.text!)"
        birthdayLabel.text! = "Birthday: \( birthdayLabel.text!)"
    }
}

