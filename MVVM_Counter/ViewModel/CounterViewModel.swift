//
//  CounterViewModel.swift
//  MVVM_Counter
//
//  Created by LeeHsss on 2022/03/23.
//

import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    var premium: Bool {
        counter.isPremium
    }
    
    func increament() {
        counter.increament()
    }
    
}
