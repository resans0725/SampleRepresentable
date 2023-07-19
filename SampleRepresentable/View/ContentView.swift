//
//  ContentView.swift
//  SampleRepresentable
//
//  Created by 永井涼 on 2023/07/19.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            UILabelView(isClick: $viewModel.isClick)
            if viewModel.isClick {
                UIButtonView(isClick: $viewModel.isClick )
            } else {
                Button(action: { viewModel.onTapButton() }) {
                    Text("BUTTON")
                        .foregroundColor(.white)
                        .font(.system(.title3))
                }
                .padding(.horizontal, 50)
                .padding(.vertical, 40)
                .background(.blue)
                .cornerRadius(10)
            }
        }
    }
}
