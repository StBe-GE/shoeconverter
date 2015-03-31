//
//  ViewController.swift
//  ShoeConverter
//
//  Created by STEFAN BEHRENDT on 31.03.15.
//  Copyright (c) 2015 DSP-Partners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextfield: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensShoeSizeTextfield: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {
        
        let sizeFromTextField = mensShoeSizeTextfield.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }

    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: AnyObject) {
        let sizeFromTextField = Double((womensShoeSizeTextfield.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
    
    
}

