//
//  Project39Tests.swift
//  Project39Tests
//
//  Created by Lucas Werner Kuipers on 27/04/2021.
//

import XCTest
@testable import Project39

class Project39Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
	func testAllWordsLoaded() {
		let playData = PlayData()
		XCTAssertEqual(playData.allWords.count, 384001, "allWords count was not equal to 384001")
	}
}
