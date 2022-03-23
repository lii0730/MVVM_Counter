//
//  CounterView.swift
//  MVVM_Counter
//
//  Created by LeeHsss on 2022/03/23.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject private var counterVM: CounterViewModel
    
    init() {
        counterVM = CounterViewModel()
    }
    
    var body: some View {
        VStack {
            
            Text(counterVM.premium ? "PREMIUM" : "")
                .frame(width: 200, height: 100)
                .font(.largeTitle)
                .foregroundColor(.green)
            
            Text("\(counterVM.value)")
                .font(.largeTitle)
                .padding()
            
            Button("Increament") {
                counterVM.increament()
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
