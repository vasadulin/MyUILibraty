//
//  MainViewController.swift
//  
//
//  Created by vasadulin on 03.12.2022.
//

import Foundation
import UIKit
import MyBusinessLogic

public class MainViewController: UIViewController {

  @IBOutlet weak var leftTextField: UITextField!
  @IBOutlet weak var rightTextField: UITextField!
  
  @IBOutlet weak var calculateButton: UIButton!
  
  @IBOutlet weak var resultLabel: UILabel!
  
  
  public static let viewControllerFromStoryboard = UIStoryboard(name: "MyUIStoryboard", bundle: Bundle.module).instantiateInitialViewController()!
  
  
  public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  }
    

  @IBAction func calculateButtonAction(_ sender: Any) {
    let logic = DummyLogic()
    resultLabel.text = logic.calculate(
      first: (leftTextField.text ?? ""),
      second: (rightTextField.text ?? "")) 
  }
  
  @IBAction func resetButtonAction(_ sender: Any) {
    resultLabel.text = "--"
  }
  
}

