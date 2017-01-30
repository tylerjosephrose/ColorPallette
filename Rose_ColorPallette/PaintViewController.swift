//
//  PaintViewController.swift
//  Rose_ColorPallette
//
//  Created by Tyler Rose on 1/30/17.
//  Copyright © 2017 Tyler Rose. All rights reserved.
//

import UIKit

class PaintViewController: UIViewController {

	var paintColor: UIColor!
	
	@IBOutlet weak var Background: UIView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		Background.backgroundColor = paintColor
		
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
