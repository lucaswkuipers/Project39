//
//  ViewController.swift
//  Project39
//
//  Created by Lucas Werner Kuipers on 27/04/2021.
//

import UIKit

class ViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	var playData = PlayData()
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return playData.allWords.count
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		let word = playData.allWords[indexPath.row]
		
		cell.textLabel?.text = word
		cell.detailTextLabel?.text = "\(playData.wordCounts.count(for: word))"
		
		return cell
	}
}

