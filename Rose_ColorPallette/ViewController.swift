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
		mainCanvas = UIImageView(frame: view.frame)
	}
	
	@IBAction func setBackgroundColor(_ sender: UIBarButtonItem) {
		backColor = UIColor(colorLiteralRed: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: alphaSlider.value)
	}
	
	var mainCanvas: UIImageView!
	
	@IBOutlet weak var redLbl: UILabel!
	@IBOutlet weak var greenLbl: UILabel!
	@IBOutlet weak var blueLbl: UILabel!
	@IBOutlet weak var alphaLbl: UILabel!
	
	@IBOutlet weak var redSlider: UISlider!
	@IBOutlet weak var blueSlider: UISlider!
	@IBOutlet weak var alphaSlider: UISlider!
	@IBOutlet weak var greenSlider: UISlider!

	@IBOutlet weak var colorView: UIView!
	
	var paintColor: UIColor!
	var backColor: UIColor!

	@IBAction func displayColor(_ sender: UISlider) {
		// Set UIView background color
		paintColor = UIColor(colorLiteralRed: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: alphaSlider.value)
		colorView.backgroundColor = paintColor
		
		// Display the color values of each slider
		redLbl.text = String.localizedStringWithFormat("%0.0f", redSlider.value * 255)
		greenLbl.text = String.localizedStringWithFormat("%0.0f", greenSlider.value * 255)
		blueLbl.text = String.localizedStringWithFormat("%0.0f", blueSlider.value * 255)
		alphaLbl.text = String.localizedStringWithFormat("%0.0f %%", alphaSlider.value * 100)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let destination = segue.destination as! PaintViewController
		destination.backColor = backColor
		destination.paintColor = paintColor
		destination.canvas = mainCanvas
	}

}

