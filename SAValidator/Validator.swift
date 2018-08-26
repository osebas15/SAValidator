//
//  Validator.swift
//  PDIS
//
//  Created by Sebastian Aguirre on 8/24/18.
//  Copyright © 2018 SeaAnt. All rights reserved.
//

import Foundation
import UIKit

open class Validator {
    
    public var validationOnNilView = true
    
    let view : UIView?
    
    var rule : (UIView)->Bool
    
    public init(managedView: UIView?, rule: @escaping (UIView)->Bool) {
        view = managedView
        self.rule = rule
    }
    
    convenience public init(textFieldNotEmpty textField: UITextField){
        self.init(managedView: textField) { view -> Bool in
            let textField = view as! UITextField
            
            return textField.text != nil && textField.text!.trimmingCharacters(in: .whitespaces) != ""
        }
    }
    
    public func validate() -> Bool {
        return view == nil ? validationOnNilView : rule(view!)
    }
}
