//
//  CashTextFieldDelegate.swift
//  MemeMeDelegateChallenge
//
//  Created by Steve Henderson on 2016-05-12.
//  Copyright © 2016 Steve Henderson. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text == "" {
            textField.text = "$0.00"
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // Determine what the new text will be
        var newText: NSString = textField.text!
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        if let currencyString = formatCurrency(newText) {
            textField.text = currencyString
            return false
        }
        
        return true
    }
    func formatCurrency(string: NSString) -> String? {
        
        // Remove the $ , . from the string
        var newText = string.stringByReplacingOccurrencesOfString(".", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
        newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
        
        // Format the string in currency format
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        
        let numberFromField = (NSString(string: newText).doubleValue)/100
        return formatter.stringFromNumber(numberFromField)
    }
}