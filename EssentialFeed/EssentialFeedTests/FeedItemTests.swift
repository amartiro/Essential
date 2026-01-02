//
//  FeedItemTests.swift
//  EssentialFeedTests
//
//  Created by Artak Martirosyan on 10.12.25.
//

import XCTest
@testable import EssentialFeed

final class FeedItemTests: XCTestCase {
    func test_FeedItem_Location_set_Correct() throws {
        let sut = FeedImage(id: UUID(), description: "Bacatrutyun", location: "Yerevan", url: URL(string:"http://www.google.com")!)
        XCTAssertEqual(sut.location, "Yerevan")
    }
}
