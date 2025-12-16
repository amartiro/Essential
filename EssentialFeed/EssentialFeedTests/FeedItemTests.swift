//
//  FeedItemTests.swift
//  EssentialFeedTests
//
//  Created by Artak Martirosyan on 10.12.25.
//

import XCTest
@testable import EssentialFeed

final class FeedItemTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let sut = FeedItem(id: UUID(), description: "Bacatrutyun", location: "Yerevan", imageURL: URL(string:"http://www.google.com")!)
        XCTAssertEqual(sut.location, "Yerevan")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
