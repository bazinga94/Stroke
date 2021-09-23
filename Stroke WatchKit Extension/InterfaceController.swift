//
//  InterfaceController.swift
//  Stroke WatchKit Extension
//
//  Created by Jongho Lee on 2021/09/23.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

	private let list: [String] = ["You", "You can", "You can make", "You can make it", "Baby", "Baby 😘"]
	private var index: Int = 0

	@IBOutlet weak var topTitleLabel: WKInterfaceLabel!

	@IBAction func onTapButton() {
		topTitleLabel.setText(list[index])
		if index == list.count - 1 {
			index = 0
		} else {
			index += 1
		}
	}



	override func awake(withContext context: Any?) {
		// Configure interface objects here.
	}

	override func willActivate() {
		// This method is called when watch view controller is about to be visible to user
	}

	override func didDeactivate() {
		// This method is called when watch view controller is no longer visible
	}

}
