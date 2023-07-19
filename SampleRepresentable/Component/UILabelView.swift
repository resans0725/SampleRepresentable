//
//  UILabelView.swift
//  SampleRepresentable
//
//  Created by 永井涼 on 2023/07/19.
//

import SwiftUI
import UIKit

struct UILabelView: UIViewRepresentable {
    @Binding var isClick: Bool
    
    func makeUIView(context: Context) -> UILabel {
        let labelView: UILabel = UILabel()
        labelView.text = "Hello World"
        labelView.textAlignment = .center
        return labelView
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        if isClick {
            uiView.text = "pressed"
        } else {
            uiView.text = "not pressed"
        }
    }
    
}
