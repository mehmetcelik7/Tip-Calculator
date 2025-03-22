//
//  ChooseTipView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct ChooseTipView: View {
    @State var selectedTip = TipPercentage.twenty.rawValue
    
    @Binding var tipPercentage: Int
    @FocusState private var focusState: Bool
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIpad ? .title : .body
    }
    var buttonSpacing: CGFloat? {
        isIpad ? 25.0 : nil
    }
    var body: some View {
        VStack(alignment:.leading,spacing: 5) {
            Text("Choose Tip")
                .foregroundStyle(.secondary)
                .font(font)
            
            VStack(alignment: .leading, spacing:  buttonSpacing) {
            
                HStack {
                    SelectButtonView(
                        percentage: TipPercentage.ten.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    
                    SelectButtonView(
                        percentage: TipPercentage.fifteen.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    SelectButtonView(
                        percentage: TipPercentage.twenty.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    
                }
                HStack {
                    SelectButtonView(
                        percentage: TipPercentage.twentyFive.rawValue,
                        selectedTip: $selectedTip,
                        tipPercentage: $tipPercentage
                    )
                    CustomTipView(selectedTip: $selectedTip, tipPercentage: $tipPercentage)
                    
                }
            }
        }
    }
}

#Preview {
    ChooseTipView(tipPercentage: .constant(TipPercentage.twenty.rawValue))
}
