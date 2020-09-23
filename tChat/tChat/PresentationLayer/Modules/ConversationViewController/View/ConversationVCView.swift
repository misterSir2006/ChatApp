//
//  ConversationVCView.swift
//  tChat
//
//  Created by Илья Шахназаров on 23.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ConversationVCView: UIView {

//MARK:- Properties
    
    let conversationTableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        
        return tableView
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
        
        addSubview(conversationTableView)
        conversationTableView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.left.equalTo(safeAreaLayoutGuide.snp.left)
            make.right.equalTo(safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
        }
    }
}
