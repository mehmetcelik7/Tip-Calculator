//
//  TitleView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct TitleView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    let alignment: TextAlignment
    init(alignment: TextAlignment = .center) {
        self.alignment = alignment
    }
    var fontWeight: Font.Weight {
        isIpad  ? .bold : .semibold
    }
    var body: some View {
        Text("Tip calculator")
            .font(.largeTitle)
            .fontWeight(fontWeight)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    TitleView()
}
