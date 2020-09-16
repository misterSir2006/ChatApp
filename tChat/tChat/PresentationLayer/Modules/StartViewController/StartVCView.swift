//
//  StartVCView.swift
//  tChat
//
//  Created by Илья Шахназаров on 16.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit


class StartVCView: UIView {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        fill()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fill()
    }
    
    // MARK: - Fill
    
    private func fill() {
        
        backgroundColor = .blue
        
    }
}
