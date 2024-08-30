//
//  CounterViewModels.swift
//  HelloVMMV
//
//  Created by Dimitris Giouvanakis on 30/8/24.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
   @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    var premium: Bool {
        counter.IsPremium
    }
    
    func increment() {
        counter.increment()
    }
}
