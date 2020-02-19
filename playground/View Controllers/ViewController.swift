//
//  ViewController.swift
//  playground
//
//  Created by Joseph Vadala on 2/19/20.
//  Copyright © 2020 community. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var forecastButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        forecastButton?.addTarget(self, action: #selector(showForecast), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    @IBAction func showForecast() {
        self.performSegue(withIdentifier: "showForecast", sender: self)
    }

}

