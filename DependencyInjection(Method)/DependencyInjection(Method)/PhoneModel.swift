//
//  PhoneModel.swift
//  DependencyInjection(Method)
//
//  Created by Kalangutkar Ankita Vinod on 3/27/19.
//  Copyright © 2019 Kalangutkar Ankita Vinod. All rights reserved.
//

import UIKit

class PhoneModel {
    let name: String?
    
    init(name: String) {
        self.name = name
    }
}

extension PhoneModel: Equatable {
    static func == (lhs: PhoneModel, rhs: PhoneModel) -> Bool {
        return lhs.name == rhs.name
    }
}
