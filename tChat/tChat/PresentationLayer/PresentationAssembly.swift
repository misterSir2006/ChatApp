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
}

class PresentationAssembly: IPresentationAssembly {

    private let serviceAssembly: IServiceAssebmly
    
    init(serviceAssembly: IServiceAssebmly) {
        self.serviceAssembly = serviceAssembly
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
}
