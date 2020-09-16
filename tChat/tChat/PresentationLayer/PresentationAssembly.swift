//
//  PresentationAssembly.swift
//  tChat
//
//  Created by Илья Шахназаров on 15.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

protocol IPresentationAssembly {
    
}

class PresentationAssembly: IPresentationAssembly {
    
    private let serviceAssembly: IServiceAssebmly
    
    init(serviceAssembly: IServiceAssebmly) {
        self.serviceAssembly = serviceAssembly
    }
}
