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
	
	@IBOutlet weak var Background: UIView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		//Background.backgroundColor = backColor
		
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
		paintColor.setStroke()
		path.lineWidth = 5
		path.stroke()
		canvas.image = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
	}


}
