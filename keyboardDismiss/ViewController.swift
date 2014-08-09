//
//  ViewController.swift
//  keyboardDismiss
//
//  Created by Ben Liu on 10/08/2014.
//  Copyright (c) 2014 Ben Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textFieldName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBOutlet var textFieldName : UITextField = nil
 
    // inner-build function, not quite sure why it is not OVERRIDE
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        // Can be done by either the following way
        textFieldName.resignFirstResponder()
        self.view.endEditing(true)
    }
}

