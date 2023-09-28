import Foundation
import GCDWebServer_Swift
import XCTest

final class GCDWebServerFunctionsTests: XCTestCase {
  func testGCDWebServerNormalizeHeaderValue() {
    XCTAssertEqual(
      GCDWebserverNormalizeHeaderValue("TEXT/PLAIN; Other-header"), "text/plain; Other-header")
    XCTAssertEqual(GCDWebserverNormalizeHeaderValue("PLAIN"), "plain")
    XCTAssertNil(GCDWebserverNormalizeHeaderValue(nil))
  }

}
