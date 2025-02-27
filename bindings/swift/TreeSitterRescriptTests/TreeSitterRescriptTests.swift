import XCTest
import SwiftTreeSitter
import TreeSitterRescript

final class TreeSitterRescriptTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_rescript())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Rescript grammar")
    }
}
