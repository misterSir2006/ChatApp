//
//  ConversationListCellView.swift
//  tChat
//
//  Created by Илья Шахназаров on 19.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ConversationListCellView: UIView {
    
//MARK:- Properties
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = Constants.Design.Colors.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.textColor = Constants.Design.Colors.black
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lastMessageLabel: UILabel = {
        let label = UILabel()
        label.textColor = Constants.Design.Colors.black
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    private func fill() {
        backgroundColor = Constants.Design.Colors.white
        
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview().offset(16)
        }
        
        addSubview(timeLabel)
        timeLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.top)
            make.right.equalToSuperview().offset(-8)
        }
        
        addSubview(lastMessageLabel)
        lastMessageLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-16)
            make.left.equalTo(nameLabel.snp.left)
        }
    }
}
