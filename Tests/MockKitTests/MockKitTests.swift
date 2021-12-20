import XCTest
@testable import MockKit

final class MockKitTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MockKit().text, "Hello, World!")
    }
}
