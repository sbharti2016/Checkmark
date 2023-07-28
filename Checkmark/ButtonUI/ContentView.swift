//
//  ContentView.swift
//  ButtonUI
//
//  Created by Sanjeev Bharti on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelected = false
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false

    var body: some View {
        
        VStack(alignment: .leading, spacing: 20.0) {
            CheckmarkButtonView(isSelected: $isSelected)
            Text("Status: \(isSelected ? "Selected" : "Unselected")")
            
            CheckmarkButtonView(isSelected: $isSelected1, foregroundColor: .green)
            Text("Color: \(isSelected1 ? "Selected" : "Unselected")")
            
            CheckmarkButtonView(isSelected: $isSelected2, foregroundColor: .brown, fillMode: .fill)
            Text("Color\nFilled: \(isSelected2 ? "Selected" : "Unselected")")
            
            CheckmarkButtonView(isSelected: $isSelected3, foregroundColor: .blue, fillMode: .fill, maxWidth: 80)
            Text("Color\nFilled\nFrame: \(isSelected2 ? "Selected" : "Unselected")")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
