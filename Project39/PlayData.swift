//
//  PlayData.swift
//  Project39
//
//  Created by Lucas Werner Kuipers on 27/04/2021.
//

import Foundation

class PlayData {
	var allWords = [String]()
	
	init() {
		if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
			if let plays = try? String(contentsOfFile: path) {
				allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
				allWords = allWords.filter { $0 != "" }
//				allWords = allWords.filter { $0 != "s" }
//				allWords = allWords.filter { $0 != "S" }
				print(allWords.count)
			}
		}
	}	
}
