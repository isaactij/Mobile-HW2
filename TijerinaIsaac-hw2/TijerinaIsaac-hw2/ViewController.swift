//
//  ViewController.swift
//  TijerinaIsaac-hw2
//
//  Created by Tijerina, Isaac G on 1/30/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var cityLabel: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSaveClicked(_ sender: Any) {
        guard let name = nameLabel.text else {
            messageLabel.text = "You must enter a value for *both* name and city"
            return
        }
        guard let city = cityLabel.text  else {
            messageLabel.text = "You must enter a value for *both* name and city"
            return
        }
        if(name == "" || city == ""){
            messageLabel.text = "You must enter a value for *both* name and city"
        }else{
            messageLabel.text = "\(name) - \(city)"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameLabel.resignFirstResponder()
        cityLabel.resignFirstResponder()
        return true
    }
}

