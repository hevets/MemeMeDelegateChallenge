//
//  ViewController.swift
//  MemeMeDelegateChallenge
//
//  Created by Steve Henderson on 2016-05-12.
//  Copyright © 2016 Steve Henderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    // delegates
    let zipDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.delegate = zipDelegate
        textField2.delegate = cashDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func lockSwitched(sender: AnyObject) {
        textField3.enabled = !sender.on
    }

}

