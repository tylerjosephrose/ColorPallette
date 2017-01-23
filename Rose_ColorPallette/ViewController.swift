//
//  ViewController.swift
//  Rose_ColorPallette
//
//  Created by Tyler Rose on 1/23/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	@IBOutlet weak var redSlider: UISlider!
	let greenSlider: Float = 0
	let blueSlider: Float = 0
	let alphaSlider: Float = 1
	@IBOutlet weak var colorView: UIView!

	@IBAction func displayColor(_ sender: UISlider) {
		let color = UIColor(colorLiteralRed: redSlider.value, green: greenSlider, blue: blueSlider, alpha: alphaSlider)
		colorView.backgroundColor = color
	}

}

