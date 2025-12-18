//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by Artak Martirosyan on 18.12.25.
//

import XCTest

class URLSessionHTTPClient {
    private let session: URLSession
    
    init(session: URLSession) {
        self.session = session
    }
    
    func get(from url: URL) {
        session.dataTask(with: url) { _, _, _ in }
    }
}

final class URLSessionHTTPClientTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_getFromURL_createsDataTaskWithURL() throws {
        let url = URL(string: "http://any-url.com")!
        let session = URLSessionSpy()
        let sut = URLSessionHTTPClient(session: session)
        
        sut.get(from: url)
        
        XCTAssertEqual(session.receivedURLs, [url])
      
    }

    private class URLSessionSpy: URLSession, @unchecked Sendable {
        var receivedURLs = [URL]()
        
        override func dataTask(with url: URL, completionHandler: @escaping(Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            receivedURLs.append(url)
            return FakeURLSessionDataTask()
        }
        
    }

    private class FakeURLSessionDataTask: URLSessionDataTask, @unchecked Sendable {}
}
