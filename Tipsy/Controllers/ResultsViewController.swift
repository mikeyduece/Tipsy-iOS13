//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Michael Heft on 1/6/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
  @IBOutlet weak var totalLabel: UILabel!
  @IBOutlet weak var settingsLabel: UILabel!
  @IBOutlet weak var recalculatePressed: UIButton!
  var result = "0.0"
  var tip = 20
  var split = 2
  
  override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = result
        settingsLabel.text = "Split between \(split) people, with \(tip)% tip."
    }
    
  @IBAction func recalculatePressed(_ sender: UIButton) {
      self.dismiss(animated: true, completion: nil)
  }

}
