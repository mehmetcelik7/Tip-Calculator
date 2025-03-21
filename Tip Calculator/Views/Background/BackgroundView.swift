//
//  BackgroundView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color
                .white
                .opacity(0.9)
                .ignoresSafeArea()
            SinePathView()
        }
    }
}

#Preview {
    BackgroundView()
}
