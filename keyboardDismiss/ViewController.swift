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
        textFiledName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet var textFiledName : UITextField = nil
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
}

