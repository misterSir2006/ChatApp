//
//  Constants.swift
//  tChat
//
//  Created by Илья Шахназаров on 18.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

struct Constants {
    
    // MARK:- Content
    struct Content {
        static let conversationListCellReuseIdentifier = "conversationListCell"
        static let conversationCellReuseIdentifier = "conversationCell"
    }
    
    // MARK:- Design
    struct Design {
        
    // MARK:- Colors
        
        struct Colors {
            static let white = UIColor(hexString: "#FFFFFF")
            static let black = UIColor(hexString: "#202020")
            static let blue = UIColor(hexString: "#3F78F0")
            static let highlightedBlue = UIColor(hexString: "#6899EE")
            static let messageYellow = UIColor(hexString: "#FFE08A")
            static let lightestGray = UIColor(hexString: "#F5F5F5")
        }
    // MARK:- Images
        
        struct Images {
            static let userImage = UIImage(named: "placeholder-user")
            static let addPhotoButton = UIImage(named: "slr-camera-2-xxl")
        }
        
    }
}
