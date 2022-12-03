//
//  MainViewController.swift
//  
//
//  Created by vasadulin on 03.12.2022.
//

import Foundation
import UIKit

class MainViewController: UIViewController {

  @IBOutlet weak var leftTextField: UITextField!
  @IBOutlet weak var rightTextField: UITextField!
  
  @IBOutlet weak var calculateButton: UIButton!
  
  @IBOutlet weak var resultLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  }
    

  @IBAction func calculateButtonAction(_ sender: Any) {
    resultLabel.text = (leftTextField.text ?? "")  + (rightTextField.text ?? "")
  }
  
  @IBAction func resetButtonAction(_ sender: Any) {
    resultLabel.text = ""
  }
  
}

