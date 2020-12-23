//
//  IsValidEmailOrNot.swift
//  UserLogin
//
//  Created by Jerry Ren on 11/12/20.
//

import Foundation

extension String {
    var isValidEmailOrNaw: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
} 
