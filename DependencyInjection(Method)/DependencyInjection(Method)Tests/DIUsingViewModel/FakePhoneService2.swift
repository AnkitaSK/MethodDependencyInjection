//
//  FakePhoneViewModel.swift
//  DependencyInjection_Method
//
//  Created by Kalangutkar Ankita Vinod on 3/27/19.
//  Copyright © 2019 Kalangutkar Ankita Vinod. All rights reserved.
//

import UIKit

// for the purpose of DI (injecting a fake data)
class FakePhoneService2: PhoneServiceProtocol {
    var didUseFakeService: Bool = false
    var results = [PhoneModel(name: "China1"), PhoneModel(name: "China2")]
    func getPhoneData(completionHandler: ([PhoneModel]) -> Void) {
        didUseFakeService = true
        completionHandler(results)
    }
}
