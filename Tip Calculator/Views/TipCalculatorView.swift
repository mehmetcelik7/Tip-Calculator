//
//  TipCalculatorView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct TipCalculatorView: View {
    @State private var tipPercentage = 20
    @State private var split: Int = 1
    @State private var bill: Double = 0.0
    @State private var isFocused: Bool = false
    
    let maxSplit: Int = 10
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.6).ignoresSafeArea()
            
            
            VStack {
                Spacer()
                
                Text("Title View // todo")
                VStack(alignment: .leading) {
                    Text("Enter total view")
                    Text("Choose Tip View")
                }
                Text("Split View")
                
                Spacer()
                
                if !isFocused {
                    Text("Payment SummaryView")
                    
                    Spacer()
                }
            }
            .padding()
        }.onTapGesture {
            //TODO: Implement dude
            print("Implement tap outside of text field")
        }
    }
}

#Preview {
    TipCalculatorView()
}
