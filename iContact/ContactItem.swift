//
//  ContactItem.swift
//  iContact
//
//  Created by Himaja Motheram on 4/7/17.
//  Copyright © 2017 Sriram Motheram. All rights reserved.
//

import UIKit

class ContactItem: NSObject {
    var FirstName: String
    var LastName: String
    var PhoneNum: String
    var EmailAddr: String = ""
    //var FirstLastName: String
    //var LastFirstName: String

    var firstLastName :String! {
        return "\(LastName)"
        
    }
    var lastFirstName :String! {
        return "\(FirstName)"
        
    }
    
    init(FN: String, LN: String, PNum: String, EAddr: String )  {
    
      FirstName = FN
      LastName = LN
      PhoneNum = PNum
      EmailAddr = EAddr

    }

    
}
