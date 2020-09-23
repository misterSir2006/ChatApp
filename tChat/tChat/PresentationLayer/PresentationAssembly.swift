//
//  PresentationAssembly.swift
//  tChat
//
//  Created by Илья Шахназаров on 15.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

protocol IPresentationAssembly {
    
    func profileViewController() -> ProfileViewController
    
    func conversationListViewController() -> ConversationListViewController
    
    func mainNavigationController() -> UINavigationController
    
    func conversationViewController() -> ConversationViewController
    
}

class PresentationAssembly: IPresentationAssembly {

    private let serviceAssembly: IServiceAssebmly
    
    init(serviceAssembly: IServiceAssebmly) {
        self.serviceAssembly = serviceAssembly
    }
    
    
//MARK:- NavigationController
    
    func mainNavigationController() -> UINavigationController {
           
        let conversationListController = conversationListViewController()
        conversationListController.navigationItem.title = "Tinkoff Chat"
        
        let navigation = UINavigationController(rootViewController: conversationListController)
        
        return navigation
    }
       
    
//MARK:- ProfileViewController
    func profileViewController() -> ProfileViewController {
        let model = profileVCModel()
        let controller = ProfileViewController(model: model, assembly: self)
        return controller
    }
    
    private func profileVCModel() -> ProfileVCModel {
        return ProfileVCModel()
    }

//MARK:- ConversationListViewController
    func conversationListViewController() -> ConversationListViewController {
        let model = conversationListVCModel()
        let controller = ConversationListViewController(model: model, assembly: self)
        return controller
    }
    
    private func conversationListVCModel() -> ConversationListVCModel {
        return ConversationListVCModel()
    }

//MARK:- ConversationViewController
    func conversationViewController() -> ConversationViewController {
        let model = conversationVCModel()
        let controller = ConversationViewController(model: model, assembly: self)
        return controller
    }
    
    private func conversationVCModel() -> ConversationVCModel {
        return ConversationVCModel()
    }
    
    
}
