//
//  ConversationListViewCell.swift
//  tChat
//
//  Created by Илья Шахназаров on 18.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ConversationListCell: UITableViewCell {

//MARK:- Properties
        
    let conversationListCellView = ConversationListCellView()

//MARK:- Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        fill()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fill()
    }
    
    func configure(model: ConversationListModel) {
        
        if let name = model.name {
            conversationListCellView.nameLabel.text = name
        } else {
            conversationListCellView.nameLabel.text = ""
        }
                
        if let message = model.message {
            conversationListCellView.lastMessageLabel.text = message
        } else {
            conversationListCellView.lastMessageLabel.text = "No messages yet"
            conversationListCellView.lastMessageLabel.font = UIFont(name: "Times New Roman", size: 16)
        }
        
        conversationListCellView.backgroundColor = model.isOnline ? Constants.Design.Colors.messageYellow : Constants.Design.Colors.white
        
        if conversationListCellView.lastMessageLabel.text != "No messages yet" {
            conversationListCellView.lastMessageLabel.font = model.hasUnreadMessages ? UIFont.boldSystemFont(ofSize: 16) : UIFont.systemFont(ofSize: 16)
        }
        
        let time = model.date
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
            
        if Calendar.current.isDateInToday(time) {
            dateFormatter.dateFormat = "HH:mm"
        } else {
            dateFormatter.dateFormat = "dd MMM"
        }
            
        conversationListCellView.timeLabel.text = dateFormatter.string(from: time)
    }
    
//MARK:- Fill
    
    private func fill() {
        addSubview(conversationListCellView)
        conversationListCellView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }

}
