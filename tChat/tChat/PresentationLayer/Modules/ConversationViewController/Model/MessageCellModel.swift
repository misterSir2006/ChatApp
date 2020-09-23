//
//  ConversationModel.swift
//  tChat
//
//  Created by Илья Шахназаров on 23.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

struct MessageCellModel {
    let text: String?
    let isMessageOfCurrentUser: Bool
}

var conversationArray = [MessageCellModel(text: "Privet", isMessageOfCurrentUser: true),
                        MessageCellModel(text: "Salam", isMessageOfCurrentUser: false),
                        MessageCellModel(text: "Сегодня всё в силе?", isMessageOfCurrentUser: true)]
