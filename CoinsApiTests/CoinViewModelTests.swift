//
//  CoinViewModelTests.swift
//  CoinsApiTests
//
//  Created by Rachit Sharma on 06/08/2025.
//

import XCTest
@testable import CoinsAPI

class CoinViewModelTests: XCTestCase {
    
    func testinit(){
        let service = MockDataTesting()
        let viewmodel = CoinsViewModel(Service: service)
        XCTAssertNotNil(viewmodel,"The ViewModel should not be nil")
    }
    
    func testSuccessfulcoinsFetch()async{
        let service = MockDataTesting()
        let viewmodel = CoinsViewModel(Service: service)
        await viewmodel.fetchCoins()
        XCTAssertTrue(viewmodel.coins.count > 0) //ensures that we are fectching coins
        XCTAssertEqual(viewmodel.coins.count , 9) //ensures that all coins were decoded
    }
    
    func testCoinFetchWithInvaliJeson()async{
        let service = MockDataTesting()
        service.mockData = MockCoins_invalidJSON
        let viewmodel = CoinsViewModel(Service: service)
        await viewmodel.fetchCoins()
        XCTAssertTrue(viewmodel.coins.isEmpty)
    }
}
