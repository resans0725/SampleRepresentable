//
//  ContentViewModel.swift
//  SampleRepresentable
//
//  Created by 永井涼 on 2023/07/19.
//

import Foundation

final class ContentViewModel: ObservableObject {
    @Published var isClick = false
    
    func onTapButton() {
        isClick = true
    }
}
