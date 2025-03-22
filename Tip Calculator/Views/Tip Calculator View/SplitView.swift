//
//  SplitView.swift
//  Tip Calculator
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct SplitView: View {
    @Binding var split:  Int
    private let maxSplit = 10
    let alignment: Alignment
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var font: Font {
        isIpad ? .title : .body
    }
    var body: some View {
        VStack(spacing: 0) {
            Text("Split")
                .font(font)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity,alignment: alignment)
            HStack {
                Button {
                    if split > 1 {
                        split -= 1
                    }
                  
                } label: {
                    Image(systemName: "minus.circle.fill")
                        
                }
                
                Text("\(split)")
                   
                
                Button {
                    if  split < maxSplit {
                        split += 1
                    }
                  
                } label: {
                    Image(systemName: "plus.circle.fill")
                 
                }

            }
            .font(.title)
            .foregroundStyle(.myDarkGreen)
            .padding()
        }
    }
}

#Preview {
    SplitView(split: .constant(1), alignment: .center)
        .padding()
}
