//
//  CuilValidator.swift
//  Validator
//
//  Created by Cecilia Laitano on 6/28/16.
//  Copyright © 2016 Panacia. All rights reserved.
//

import UIKit

let multipliers = [5, 4, 3, 2, 7, 6, 5, 4, 3, 2]

public class CuilValidator: NSObject {
    
    public class func isValid(cuil: String) -> Bool{
    
        //only numbers allow
        let digitalCharacters = NSCharacterSet.decimalDigitCharacterSet().invertedSet
        if cuil.rangeOfCharacterFromSet(digitalCharacters) != nil {
            return false
        }
        
        if cuil.characters.count != 11 {
            return false
        }
        
        let codIdentification: String = cuil.substringToIndex(cuil.characters.endIndex)
        let verificationDigit = Int(String(cuil[cuil.startIndex.advancedBy(10)]))
        let characters = codIdentification.characters.map { String($0) }
        
        var sum = 0
        for i in 0...9{
            sum +=  (characters[i] as NSString).integerValue * multipliers[i]
        }

        let mod = sum % 11
        let verify = 11 - mod
        
        //validations
        if verify == 11 && verificationDigit == 0 {
            return true
        }
        if verify == 10 && verificationDigit == 9 {
            return true
        }
        if verify == verificationDigit {
            return true
        }
        return false
    }
}
