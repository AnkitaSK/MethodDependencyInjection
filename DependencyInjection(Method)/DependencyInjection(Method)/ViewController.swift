//
//  ViewController.swift
//  DependencyInjection(Method)
//
//  Created by Kalangutkar Ankita Vinod on 3/27/19.
//  Copyright © 2019 Kalangutkar Ankita Vinod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var phonesData:[PhoneModel]?
    
    var phoneViewModel = PhoneViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        without using view model
//        fetchPhones()
        
// using view model
        fetchDataUsingViewModel()
    }
    
//    using view model
    func fetchDataUsingViewModel() {
        phoneViewModel.fetchPhoneData { (success) in
            if success {
                self.phonesData = phoneViewModel.phoneData
            }
        }
    }
    
//    without using view model
//    func fetchPhones(phoneService: PhoneService = PhoneService()) {
//        phoneService.getPhoneData { phones in
//            self.phonesData = []
//            self.phonesData = phones
//        }
//    }

}

