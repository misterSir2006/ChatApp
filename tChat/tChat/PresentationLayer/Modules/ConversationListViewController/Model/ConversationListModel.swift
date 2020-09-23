//
//  ConversationListModel.swift
//  tChat
//
//  Created by Илья Шахназаров on 21.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import Foundation

struct ConversationListModel {
    let name: String?
    let message: String?
    let date: Date
    let isOnline: Bool
    let hasUnreadMessages: Bool
}

var data1 = [ConversationListModel(name: "Владислав", message: "В дружбу идем сегодня.", date: Date(timeIntervalSince1970: 1), isOnline: false, hasUnreadMessages: true),
            ConversationListModel(name: "Игорь", message: "Привет, есть минутка?", date: Date(timeIntervalSince1970: 1), isOnline: true, hasUnreadMessages: true),
            ConversationListModel(name: "Даниил", message: "Спасибо за дз", date: Date(timeIntervalSince1970: 1), isOnline: false, hasUnreadMessages: false),
            ConversationListModel(name: "Мария", message: "Мы пойдем сегодня куда-нибудь?", date: Date(timeIntervalSince1970: 1), isOnline: true, hasUnreadMessages: false)]
var data2 = [ConversationListModel(name: "Саня", message: "Ты Дашу не обижай плз...", date: Date(timeIntervalSince1970: 1), isOnline: false, hasUnreadMessages: false),
            ConversationListModel(name: "Даша", message: nil, date: Date(timeIntervalSince1970: 1), isOnline: true, hasUnreadMessages: true),
            ConversationListModel(name: "Наташа", message: nil, date: Date(timeIntervalSince1970: 1), isOnline: false, hasUnreadMessages: true),
            ConversationListModel(name: "Николай", message: "где дз по матеше?", date: Date(timeIntervalSince1970: 1), isOnline: false, hasUnreadMessages: false),
            ConversationListModel(name: nil, message: nil, date: Date(timeIntervalSince1970: 1), isOnline: false, hasUnreadMessages: false)]
