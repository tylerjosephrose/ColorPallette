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
	@IBOutlet weak var blueSlider: UISlider!
	@IBOutlet weak var alphaSlider: UISlider!
	@IBOutlet weak var greenSlider: UISlider!

	@IBOutlet weak var colorView: UIView!

	@IBAction func displayColor(_ sender: UISlider) {
		let userColor = UIColor(colorLiteralRed: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: alphaSlider.value)
		colorView.backgroundColor = userColor
	}

}

