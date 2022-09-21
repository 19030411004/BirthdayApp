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
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String {
             NameLabel.text = myName
        if let myBirthday = storedBirthday as? String {
            birthdayLabel.text = myBirthday
            }
            
            
        }
        
    }


    @IBAction func ButtonClicked(_ sender: Any) {
        
        //keeping data
        UserDefaults.standard.set(UserNameText.text!, forKey: "name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birthday")
        
        NameLabel.text! = "Name: \(UserNameText.text!)"
        birthdayLabel.text! = "Birthday: \( birthdayLabel.text!)"
    }
}

