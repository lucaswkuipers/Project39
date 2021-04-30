//
//  Project39Tests.swift
//  Project39Tests
//
//  Created by Lucas Werner Kuipers on 27/04/2021.
//

import XCTest
@testable import Project39

class Project39Tests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
	func testAllWordsLoaded() {
		let playData = PlayData()
		XCTAssertEqual(playData.allWords.count, 18440, "allWords count was not equal to 18440")
	}
	func testWordCountsAreCorrect() {
		let playData = PlayData()
		XCTAssertEqual(playData.wordCounts.count(for: "entering"), 4, "entering does not appear 4 times")
		XCTAssertEqual(playData.wordCounts.count(for: "pense"), 1, "pense does not appear 1 time")
		XCTAssertEqual(playData.wordCounts.count(for: "Gentleman"), 115, "Gentleman does not appear 115 times")
		XCTAssertEqual(playData.wordCounts.count(for: "Shylock"), 19, "Shylock does not appear 19 times")
		XCTAssertEqual(playData.wordCounts.count(for: "Are"), 133, "Are does not appear 133 times")
		XCTAssertEqual(playData.wordCounts.count(for: "NESTOR"), 50, "NESTOR does not appear 50 times")

	}
	func testUserFilterWorks() {
		let playData = PlayData()
		
		playData.applyUserFilter("100")
		XCTAssertEqual(playData.filteredWords.count, 495)
		
		playData.applyUserFilter("1000")
		XCTAssertEqual(playData.filteredWords.count, 55)

		playData.applyUserFilter("10000")
		XCTAssertEqual(playData.filteredWords.count, 1)

		playData.applyUserFilter("test")
		XCTAssertEqual(playData.filteredWords.count, 56)

		playData.applyUserFilter("swift")
		XCTAssertEqual(playData.filteredWords.count, 7)

		playData.applyUserFilter("objective-c")
		XCTAssertEqual(playData.filteredWords.count, 0)
	}
	func testViewController() {
		let vc = ViewController()
		vc.viewDidLoad()
	}
	func testWordsLoadSpeed() {
		measure {
			_ = PlayData()
		}
	}
}
