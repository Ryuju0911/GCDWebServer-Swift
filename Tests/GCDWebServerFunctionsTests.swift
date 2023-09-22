import Foundation
import GCDWebServer_Swift
import XCTest

final class GCDWebServerFunctionTest: XCTestCase {
  func testGCDWebServerNormalizeHeaderValue() {
    XCTAssertEqual(
      GCDWebserverNormalizeHeaderValue("TEXT/PLAIN; Other-header"), "text/plain; Other-header")
    XCTAssertEqual(GCDWebserverNormalizeHeaderValue("PLAIN"), "plain")
    XCTAssertNil(GCDWebserverNormalizeHeaderValue(nil))
  }

}
