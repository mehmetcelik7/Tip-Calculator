//
//  TipCalculatorView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct TipCalculatorView: View {
    @State private var isFocused: Bool = false
    @State private var tipModel: TipModel = TipModel(tipPercentage: 20, split: 1, bill: 0.0)
    let maxSplit: Int = 10
    
    var body: some View {
        ZStack {
            BackgroundView()
           
            
            
            VStack(alignment: .leading) {
                Spacer()
                
                TitleView()
                VStack(alignment: .leading) {
                    EnterTotalView(bill: $tipModel.bill, isFocused: $isFocused)
                    ChooseTipView(tipPercentage: $tipModel.tipPercentage)
                }
              
                SplitView(split: $tipModel.split, alignment: .leading)
                
                Spacer()
                
                if !isFocused {
                    PaymentSummaryView(tipModel: tipModel)
                    
                    Spacer()
                }
            }
            .padding()
        }.onTapGesture {
            UIApplication
                .shared
                .sendAction(#selector(UIResponder.resignFirstResponder),
                            to: nil,
                            from: nil,
                            for: nil)
        }
    }
}

#Preview {
    TipCalculatorView()
}
