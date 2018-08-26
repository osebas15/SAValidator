//
//  ValidationGroup.swift
//  PDIS
//
//  Created by Sebastian Aguirre on 8/24/18.
//  Copyright © 2018 SeaAnt. All rights reserved.
//

import Foundation
import UIKit

open class ValidationGroup {
    public var validators = [Validator]()
    
    var successBlock = {}
    
    var failureBlock : ([(Validator, Bool)])->() = {_ in }
    
    convenience public init(validators: [Validator] = [Validator](),
                            onSuccess:@escaping ()->(),
                            onFailure:@escaping ([(Validator, Bool)])->()) {
        self.init()
        successBlock = onSuccess
        failureBlock = onFailure
    }
    
    required public init() {
    }
    
    public func validationArray()->[(Validator, Bool)]{
        var validatorTouples : [(Validator, Bool)] = []
        
        validators.forEach {validatorTouples += [($0,$0.validate())]}
        
        return validatorTouples
    }
    
    public func validate(){
        let validationResult = validationArray()
        if validationResult.filter({!$0.1}).count == 0 {
            successBlock()
        }
        else {
            failureBlock(validationResult)
        }
    }
}
