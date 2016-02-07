//
//  SecondViewController.swift
//  Rhabit
//
//  Created by Mark Moussa on 2/6/16.
//  Copyright © 2016 Mark Moussa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var UsernameField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    var toUsername:String!
    var toPassword:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UsernameField.text = toUsername;
        PasswordField.text = toPassword;
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

