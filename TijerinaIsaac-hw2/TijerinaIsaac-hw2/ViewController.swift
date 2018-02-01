//
//  ViewController.swift
//  TijerinaIsaac-hw2
//
//  Created by Tijerina, Isaac G on 1/30/18.
//  Copyright © 2018 Tijerina, Isaac G. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    //Runs when app initally opens
    override func viewDidLoad() {
        super.viewDidLoad()
        //Sets the message text to empty so the user does not see anything on inital run
        messageLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Runs when the save button is clicked
    @IBAction func btnSaveClicked(_ sender: Any) {
        //Closes the key board
        nameTextField.resignFirstResponder()
        cityTextField.resignFirstResponder()
        //Checks one at a time to see if the name and city text fields are unwrapable
        //and if not it gives a error message and returns
        guard var name = nameTextField.text else {
            messageLabel.text = "You must enter a value for *both* name and city!!"
            return
        }
        guard var city = cityTextField.text  else {
            messageLabel.text = "You must enter a value for *both* name and city!!"
            return
        }
        //Removes any trailing spaces
        name = name.trimmingCharacters(in: .whitespaces)
        city = city.trimmingCharacters(in: .whitespaces)
        //Checks to see if name or city is empty and if so gives an error message
        //If not it sets the message label to the name and city values
        if(name == "" || city == ""){
            messageLabel.text = "You must enter a value for *both* name and city!!"
        }else{
            messageLabel.text = "\(name) - \(city)"
        }
    }
    
    //Runs when "Done" is pressed on the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Closes the keyboard
        nameTextField.resignFirstResponder()
        cityTextField.resignFirstResponder()
        return true
    }
    
    //Runs when the screen is pressed anywhere except for  the text fields and save button
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //Closes the keyboard
        self.view.endEditing(true)
    }
}

