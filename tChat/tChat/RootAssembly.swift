//
//  RootAssembly.swift
//  tChat
//
//  Created by Илья Шахназаров on 15.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import Foundation

class RootAssembly {
    lazy var presentationAssembly: IPresentationAssembly = PresentationAssembly(serviceAssembly: self.serviceAssembly)
    private lazy var serviceAssembly: IServiceAssebmly = ServiceAssembly(coreAssebmly: self.coreAssembly)
    private lazy var coreAssembly: ICoreAssembly = CoreAssembly()
}

