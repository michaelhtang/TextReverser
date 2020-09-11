//
//  ViewController.swift
//  New
//
//  Created by Michael Tang on 2020-09-10.
//  Copyright © 2020 Michael Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterTextLabel: UILabel!
    @IBOutlet weak var textInputField: UITextField!
    @IBOutlet weak var reverseTextButton: UIButton!
    @IBOutlet weak var reversedTextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textInputField.delegate = self
        reverseTextButton.setTitle("Reverse Text", for: .normal)
        reversedTextLabel.text = ""
    }


    
}

extension ViewController: UITextFieldDelegate {
    
    @IBAction func reverseTextButtonPressed(_ sender: UIButton) {
        textInputField.endEditing(true)
        print("button pressed")
        
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textInputField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            print("empty")
            reversedTextLabel.text = "You need to type something!"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let textString = textInputField.text {
        reversedTextLabel.text = String(textString.reversed())
    }
}
}
