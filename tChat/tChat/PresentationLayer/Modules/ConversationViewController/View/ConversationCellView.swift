//
//  ConversationCellView.swift
//  tChat
//
//  Created by Илья Шахназаров on 23.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ConversationCellView: UIView {

// MARK: - Properties

    let messageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = Constants.Design.Colors.black
   
        return label
    }()

    let bubbleBgView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 10

        return view
    }()
    
//MARK:- Init
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        fill()
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fill()
    }
        
        
//MARK:- Fill
    
    var leftConstraint = NSLayoutConstraint()
    var rightConstraint = NSLayoutConstraint()
    
    private func fill() {
        backgroundColor = Constants.Design.Colors.white
        
        addSubview(bubbleBgView)
        
        addSubview(messageLabel)
        messageLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.bottom.equalToSuperview().offset(-16)
            make.width.lessThanOrEqualTo(360)
        }
        
        leftConstraint = messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32)
        rightConstraint = messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        
        bubbleBgView.snp.makeConstraints { make in
            make.top.equalTo(messageLabel.snp.top).offset(-10)
            make.bottom.equalTo(messageLabel.snp.bottom).offset(10)
            make.left.equalTo(messageLabel.snp.left).offset(-16)
            make.right.equalTo(messageLabel.snp.right).offset(16)
            make.width.greaterThanOrEqualTo(bubbleBgView.snp.width).multipliedBy(0.25)
        }
    
    }

}
