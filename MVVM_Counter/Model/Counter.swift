//
//  Counter.swift
//  MVVM_Counter
//
//  Created by LeeHsss on 2022/03/23.
//

import Foundation

struct Counter {
    var value: Int = 0
    var isPremium: Bool = false
    
    mutating func increament() {
        value += 1 // struct 내에서 값을 변경하기 위해서는 mutating 선언
        
        // Business Logic
        if value.isMultiple(of: 3) {
            // premium
            isPremium = true
        } else {
            // not premium
            isPremium = false
        }
    }
}
