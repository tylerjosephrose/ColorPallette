//
//  PaintViewController.swift
//  Rose_ColorPallette
//
//  Created by Tyler Rose on 1/30/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import UIKit

class PaintViewController: UIViewController {

	var backColor: UIColor!
	var paintColor: UIColor!
	var canvas: UIImageView!
	var path: UIBezierPath = UIBezierPath()
	var brushSize: Float = 5
	
	@IBOutlet weak var Background: UIView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		//Background.backgroundColor = backColor
		canvas.backgroundColor?.withAlphaComponent(0.0)
		view.addSubview(canvas)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		let touch = touches.first
		let point = touch?.location(in: canvas)
		path.move(to: point!)
	}
	
	override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		let touch = touches.first
		let point = touch?.location(in: canvas)
		path.addLine(to: point!)
		// Set up the graphics context
		UIGraphicsBeginImageContext(canvas.frame.size)
		// Draw current image
		canvas.image?.draw(in: canvas.frame)
		// Set color
		paintColor.setStroke()
		// Set size
		path.lineWidth = CGFloat(brushSize)
		path.stroke()
		canvas.image = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
	}
	
	/*@IBAction func clearCanvas(_ sender: UIBarButtonItem) {
		print("clear button pressed")
		canvas.image = nil
		UIGraphicsBeginImageContext(canvas.frame.size)
		canvas.image?.draw(in: canvas.frame)
		UIGraphicsEndImageContext()
	}*/

	@IBAction func saveImage(_ sender: UIBarButtonItem) {
		UIImageWriteToSavedPhotosAlbum(canvas.image!, nil, nil, nil)
	}


}
