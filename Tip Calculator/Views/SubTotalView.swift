//
//  SubTotalView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct SubTotalView: View {
    let title: LocalizedStringKey
    let titleFont: Font
    let amount: String
    let amountFont: Font
    var body: some View {
        VStack {
            Text(title)
                .font(titleFont)
                .foregroundStyle(.secondary)
            Text(amount)
                .font(amountFont)
                .fontWeight(.semibold)
                .foregroundStyle(.myDarkGreen)
        }
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    SubTotalView(
        title: "Bill",
        titleFont: .largeTitle,
        amount: "19.99",
        amountFont: .largeTitle
    )
}
