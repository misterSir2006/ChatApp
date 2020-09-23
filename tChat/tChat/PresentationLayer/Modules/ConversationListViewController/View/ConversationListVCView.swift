//
//  ConversationListVCView.swift
//  tChat
//
//  Created by Илья Шахназаров on 18.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit
import SnapKit

class ConversationListVCView: UIView {

//MARK:- Properties
    
    let conversationListTableView: UITableView = {
        let tableView = UITableView()
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
        
        addSubview(conversationListTableView)
        conversationListTableView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.left.equalTo(safeAreaLayoutGuide.snp.left)
            make.right.equalTo(safeAreaLayoutGuide.snp.right)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
        }
    }
}
