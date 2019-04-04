//
//  PhoneViewModel.swift
//  DependencyInjection_Method
//
//  Created by Kalangutkar Ankita Vinod on 3/27/19.
//  Copyright © 2019 Kalangutkar Ankita Vinod. All rights reserved.
//

import UIKit

class PhoneViewModel {
//    for the purpose of DI
    private let phoneService: PhoneServiceProtocol?
    var phoneData = [PhoneModel]()
    
    func fetchPhoneData(completionHandler: (_ success: Bool) -> Void) {
        phoneService?.getPhoneData(completionHandler: { phones in
            self.phoneData = phones
            if phones.count > 0 {
                completionHandler(true)
            } else {
                completionHandler(false)
            }
        })
    }
    
//    for the purpose of DI
    init(phoneService: PhoneServiceProtocol = PhoneService()) {
        self.phoneService = phoneService
    }
}
