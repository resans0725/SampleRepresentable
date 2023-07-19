//
//  UIButton.swift
//  SampleRepresentable
//
//  Created by 永井涼 on 2023/07/19.
//

import SwiftUI

struct UIButtonView: UIViewRepresentable {
    @Binding  var isClick:Bool
    func makeUIView(context: Context) -> UIButton {
        let control = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        control.setTitle("button", for: .normal)
        control.setTitleColor(.red, for: .normal)
        control.addTarget(context.coordinator,action: #selector(Coordinator.clickButton(sender:)),for: .touchUpInside)
        return control
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator {
        var control: UIButtonView
        init(_ control: UIButtonView){
            self.control = control
        }
        @objc  func clickButton(sender : Any){
            control.isClick.toggle()
        }
    }
}
