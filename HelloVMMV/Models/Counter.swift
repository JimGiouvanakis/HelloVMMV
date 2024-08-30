//
//  Counter.swift
//  HelloVMMV
//
//  Created by Dimitris Giouvanakis on 30/8/24.
//

import Foundation


struct Counter {
    
    var value: Int = 0
    var IsPremium: Bool = false
    
    mutating func increment() {
        value += 1
        
        //Bussness Logic
        if value .isMultiple(of: 3) {
            // Premium
            IsPremium = true
        }else {
            //Not premium
            IsPremium = false
        }
    }
}
