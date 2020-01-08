//
//  TipBrain.swift
//  Tipsy
//
//  Created by Michael Heft on 1/6/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct TipBrain {
  var tip: Tip?
  
  mutating func setTipAmount(_ tipAmount: String) {
    if (tipAmount == "20%") {
      tip = Tip(tipAmount: 0.2)
    } else if (tipAmount == "10%") {
      tip = Tip(tipAmount: 0.1)
    } else {
      tip = Tip(tipAmount: 0.0)
    }
  }
  
  func getTipAmount() -> Float {
    return tip?.tipAmount ?? 0.2
  }
  
  func calculateTip(billAmount: Float, tipPct: Float, numberOfPeople: Integer) -> Float {
    return (billAmount / tipPct) * numberOfPeople
  }
  
}
