//
//  ServiceAssembly.swift
//  tChat
//
//  Created by Илья Шахназаров on 15.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

protocol IServiceAssebmly {
    
}

class ServiceAssembly: IServiceAssebmly {
    
    private let coreAssembly: ICoreAssembly
    
    init(coreAssebmly: ICoreAssembly) {
        self.coreAssembly = coreAssebmly
    }
}
