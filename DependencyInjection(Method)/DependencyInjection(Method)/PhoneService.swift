//
//  PhoneService.swift
//  DependencyInjection(Method)
//
//  Created by Kalangutkar Ankita Vinod on 3/27/19.
//  Copyright © 2019 Kalangutkar Ankita Vinod. All rights reserved.
//

import UIKit

// for the purpose of DI
protocol PhoneServiceProtocol {
    func getPhoneData(completionHandler: (_ phones: [PhoneModel]) -> Void)
}

class PhoneService: PhoneServiceProtocol {
    func getPhoneData(completionHandler: (_ phones: [PhoneModel]) -> Void) {
        print("Getting asynchronous data")
        let results = [PhoneModel(name: "iPhone xs"), PhoneModel(name: "Samsung")]
        completionHandler(results)
    }
}
