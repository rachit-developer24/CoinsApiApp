//
//  CoinsApiTests.swift
//  CoinsApiTests
//
//  Created by Rachit Sharma on 05/08/2025.
//

import XCTest
@testable import CoinsAPI

final class CoinsApiTests: XCTestCase {
  func testdecodearray() throws {
      do{
          let coins = try JSONDecoder().decode([Coins].self, from:TestCoinData )
          XCTAssertTrue(coins.count > 0)
          XCTAssertEqual(coins.count, 9)
      }catch{
          XCTFail(error.localizedDescription)
      }
    }
    
}


