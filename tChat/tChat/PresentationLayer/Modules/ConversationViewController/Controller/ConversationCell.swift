//
//  ConversationCell.swift
//  tChat
//
//  Created by Илья Шахназаров on 23.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ConversationCell: UITableViewCell {

//MARK:- Properties
            
    let conversationCellView = ConversationCellView()

//MARK:- Init
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        fill()
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fill()
    }
        
    func configure(model: MessageCellModel) {
        
        if let text = model.text {
            conversationCellView.messageLabel.text = text
        } else {
            conversationCellView.messageLabel.text = ""
        }
        
        conversationCellView.bubbleBgView.backgroundColor = model.isMessageOfCurrentUser ?  Constants.Design.Colors.messageYellow : Constants.Design.Colors.lightestGray
        
        if model.isMessageOfCurrentUser {
            conversationCellView.leftConstraint.isActive = false
            conversationCellView.rightConstraint.isActive = true
        } else {
            conversationCellView.leftConstraint.isActive = true
            conversationCellView.rightConstraint.isActive = false
        }
    }
        
    //MARK:- Fill
        
    private func fill() {
        
        selectionStyle = .none
        backgroundColor = .clear
        
        addSubview(conversationCellView)
        conversationCellView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}

