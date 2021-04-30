//
//  PlayData.swift
//  Project39
//
//  Created by Lucas Werner Kuipers on 27/04/2021.
//

import Foundation

class PlayData {
	var allWords = [String]()
	var filteredWords = [String]()
	var wordCounts: NSCountedSet!
	
	init() {
		if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
			if let plays = try? String(contentsOfFile: path) {
				allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
				allWords = allWords.filter { $0 != "" }
				
				wordCounts = NSCountedSet(array: allWords)
				let sorted = wordCounts.allObjects.sorted { wordCounts.count(for: $0) > wordCounts.count(for: $1) }
				allWords = sorted as! [String]
			}
		}
	}
	func applyUserFilter(_ input: String) {
		if let wordCount = Int(input) {
			filteredWords = allWords.filter { wordCounts.count(for: $0) >= wordCount }
		} else {
			filteredWords = allWords.filter { $0.range(of: input, options: .caseInsensitive) != nil }
		}
	}
	func applyFilter(_ filter: (String) -> Bool) {
		filteredWords = allWords.filter(filter)
	}
}
