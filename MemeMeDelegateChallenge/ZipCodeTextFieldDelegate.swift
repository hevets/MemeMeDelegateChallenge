//
//  ZipCodeTextFieldDelegate.swift
//  MemeMeDelegateChallenge
//
//  Created by Steve Henderson on 2016-05-12.
//  Copyright © 2016 Steve Henderson. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        return true
    }
}