//
//  ViewController.swift
//  DogAgeConveter
//
//  Created by Phyllis Hollingshead on 10/10/14.
//  Copyright (c) 2014 Phyllis Hollingshead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtDogAge: UITextField!
    
    @IBOutlet weak var lblDogAge: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnConvert(sender: UIButton) {
        
        txtDogAge.resignFirstResponder()
        
        var dogYears = 0.0
        let humanAge = Double((txtDogAge.text as NSString).doubleValue)
        
        
        if(humanAge > 2){
            dogYears = (10.5 * 2) + ((humanAge - 2) * 4)
        }
        else{
            dogYears = 10.5 * humanAge
        }
        lblDogAge.text = "\(dogYears)"
    }

}

