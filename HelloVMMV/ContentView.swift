//
//  ContentView.swift
//  HelloVMMV
//
//  Created by Dimitris Giouvanakis on 30/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var counterVM: CounterViewModel
    
    init() {
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        VStack {
            
            Text(counterVM.premium ? "Premium" : "")
                .foregroundColor(.green)
                .font(.largeTitle)
                .frame(width: 200, height: 100)
            
            Text("\(counterVM.value)")
                .font(.title)
            Button("Increment") {
                self.counterVM.increment()
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
