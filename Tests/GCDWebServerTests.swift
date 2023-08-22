@testable import GCDWebServer_Swift

import XCTest

final class Tests: XCTestCase {
  
  func testAddHandler() throws {
    let server = GCDWebServer()
    XCTAssertNotNil(server)
    
    server.addHandler(for: "GET", regex: "/test")
    XCTAssertEqual(server.handlersCount(), 1)
    
    XCTAssertNotNil(server.request(with: "GET", url: URL(string: "localhost")!, headers: [:], path: "/test", query: [:]))
    XCTAssertNil(server.request(with: "POST", url: URL(string: "localhost")!, headers: [:], path: "/test", query: [:]))
    
    server.removeAllHandlers()
    XCTAssertEqual(server.handlersCount(), 0)
    XCTAssertNil(server.request(with: "GET", url: URL(string: "localhost")!, headers: [:], path: "/test", query: [:]))
  }
}
