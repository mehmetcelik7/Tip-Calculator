//
//  ContentView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI


struct MainView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    
    var body: some View {
        VStack {
           
            if isIpad || isPortraitPhone {
                TipCalculatorView()
            }else{
                LandscapeTipCalculatorView()
            }
            
        }
        .padding()
    }
}

#Preview {
    MainView()
}
