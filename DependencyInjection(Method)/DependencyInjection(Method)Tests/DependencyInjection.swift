//
//  DependencyInjection.swift
//  DependencyInjection_MethodTests
//
//  Created by Kalangutkar Ankita Vinod on 3/27/19.
//  Copyright © 2019 Kalangutkar Ankita Vinod. All rights reserved.
//

import XCTest
@testable import DependencyInjection_Method

class DependencyInjection: XCTestCase {
    
    var viewController: ViewController!
    
//    class FakePhoneService: PhoneService {
//        var result = [PhoneModel(name: "HTC"), PhoneModel(name: "OPPO")]
//        var didFetchPhoneData:Bool = false
//        override func getPhoneData(completionHandler: ([PhoneModel]) -> Void) {
//            didFetchPhoneData = true
//            completionHandler(result)
//        }
//    }
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = (storyboard.instantiateViewController(withIdentifier:"ViewController") as! ViewController)
        _ = viewController.view
    }
    
//    func testFakeService() {
//        let fakePhoneService = FakePhoneService()
//        viewController.fetchPhones(phoneService: fakePhoneService)
//        XCTAssertTrue(fakePhoneService.didFetchPhoneData)
//
//        if let data = viewController.phonesData {
//            XCTAssertEqual(fakePhoneService.result, data)
//        } else {
//            XCTFail("Fetched data can not be nil")
//        }
//    }
    
    func testFakeServiceWithViewModel() {
        let fakePhoneService = FakePhoneService2()
        let phoneViewModel = PhoneViewModel(phoneService: fakePhoneService)
        viewController.phoneViewModel = phoneViewModel
        viewController.fetchDataUsingViewModel()
        
        if let data = viewController.phonesData {
            XCTAssertEqual(fakePhoneService.results, data)
        } else {
            XCTFail("Fetched data can not be nil")
        }
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
