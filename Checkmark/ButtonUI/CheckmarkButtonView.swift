//
//  CheckmarkButtonView.swift
//  ButtonUI
//
//  Created by Sanjeev Bharti on 7/28/23.
//

import SwiftUI

enum FillModeEnum {
    case empty
    case fill
}

struct CheckmarkButtonView: View {
    
    @Binding var isSelected: Bool
    
    var foregroundColor: Color
    var fillMode: FillModeEnum
    var maxWidth: CGFloat
    
    private var fillImageName: String
    private var emptyImageName: String
    
    init(isSelected: Binding<Bool>, foregroundColor: Color = .primary, fillMode: FillModeEnum = .empty, maxWidth: CGFloat = 40.0) {
        _isSelected = isSelected
        self.foregroundColor = foregroundColor
        self.fillMode = fillMode
        self.maxWidth = maxWidth
        emptyImageName = fillMode == .empty ? "square" : "square.fill"
        fillImageName = fillMode == .empty ? "checkmark.square" : "checkmark.square.fill"
    }
    
    var body: some View {
        
        Button {
            isSelected.toggle()
        } label: {
        
            Image(systemName: isSelected ? fillImageName : emptyImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(foregroundColor)
                .frame(width: maxWidth)
                .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.1), value: isSelected)
        }

    }
}

struct CheckmarkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            CheckmarkButtonView(isSelected: .constant(false))
            Spacer()
            CheckmarkButtonView(isSelected: .constant(true), maxWidth: 60.0)
            Spacer()
            CheckmarkButtonView(isSelected: .constant(false), maxWidth: 70.0)
        }
        
    }
}
