//
//  ViewController.swift
//  CarService
//
//  Created by marciofetter on 01/14/2021.
//  Copyright (c) 2021 marciofetter. All rights reserved.
//

import UIKit
import CarService

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ServiceCars().getCars { (result) in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

