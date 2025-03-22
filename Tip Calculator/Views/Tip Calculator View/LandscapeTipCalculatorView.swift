//
//  LandscapeTipCalculatorView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct LandscapeTipCalculatorView: View {
    @State private var isFocused: Bool = false
    @State private var tipModel: TipModel = TipModel(tipPercentage: 20, split: 1, bill: 0.0)
    let maxSplit: Int = 10
    
    var body: some View {
        ZStack {
            BackgroundView()
           
            
            
            HStack {
           
                
                VStack(alignment: .leading) {
                    TitleView()
                    EnterTotalView(bill: $tipModel.bill, isFocused: $isFocused)
                    HStack {
                        ChooseTipView(tipPercentage: $tipModel.tipPercentage)
                        
                        SplitView(split: $tipModel.split, alignment: .center)
                    }
                }
               
              
                
            
                if !isFocused {
                    PaymentSummaryView(tipModel: tipModel)
                    
                  
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

#Preview("Landscape",traits: .landscapeLeft){
    LandscapeTipCalculatorView()
}
