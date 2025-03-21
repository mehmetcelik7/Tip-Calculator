//
//  PaymentSummaryView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct PaymentSummaryView: View {
    let tipPercentage: Int
    let split: Int
    let bill: Double
    
    var tip: Double {
        bill * Double(tipPercentage) / 100.0
    }
    
    var total: Double {
        bill + tip
    }
    //TODO: Localize...
    func formattedAmount(value:Double, split: Int) -> String {
        let newValue = value / Double(split)
        
        return "$\(newValue.formatted())"
    }
    
    
    var totalPerPerson: String {
        formattedAmount(value: total, split: split)
    }
    var billPerPerson: String {
        formattedAmount(value: bill, split: split)
    }
    var tipPerPerson: String {
        formattedAmount(value: tip, split: split)
    }
    
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIpad ? .largeTitle : .headline
    }
   
    var body: some View {
        GroupBox(content: {
            
            VStack{
                SubTotalView(title: "Total per person", titleFont: font, amount: totalPerPerson, amountFont: font)
                    .frame(maxHeight: .infinity)
                
                
                HStack {
                    SubTotalView(title: "Bill", titleFont: font, amount: billPerPerson, amountFont: font)
                        .frame(maxHeight: .infinity)
                    SubTotalView(title: "Tip", titleFont: font, amount: tipPerPerson, amountFont: font)
                        .frame(maxHeight: .infinity)
                }
            }
            
        },label: {
            Label("Summary", systemImage: "book")
                .font(font)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding()
        })
        .backgroundStyle(.myLightGreen.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    VStack {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.3))
        PaymentSummaryView(
            tipPercentage: 20,
            split: 2,
            bill: 500
        )
    }.padding()
}
