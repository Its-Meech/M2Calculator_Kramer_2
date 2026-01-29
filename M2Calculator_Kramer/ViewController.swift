//
//  ViewController.swift
//  M2Calculator_Kramer
//
//  Created by Kramer, Jenna L. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operand1TextField: UITextField!
    @IBOutlet weak var operand2TextField: UITextField!
    @IBOutlet weak var selectOperator: UIButton!
    @IBAction func operatorButton(_sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction = UIAlertAction(title: "+", style: .default){ _ in
            self.selectOperator.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        
        let minusAction = UIAlertAction(title: "-", style: .default){ _ in
            self.selectOperator.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        
        let multAction = UIAlertAction(title: "*", style: .default){ _ in
            self.selectOperator.setTitle("*", for: .normal)
        }
        
        actionSheet.addAction(multAction)
        
        let divAction = UIAlertAction(title: "/", style: .default){ _ in
            self.selectOperator.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divAction)
        
        
        present(actionSheet, animated: true)
    }

    @IBOutlet weak var reultLabel: UILabel!
    
    @IBAction func resultButto(_ sender: Any) {
        let op1 = Int(operand1TextField.text!)!
        let op2 = Int(operand2TextField.text!)!
        let op = selectOperator.title(for: .normal)
        
        if op == "+" {
            let result = op1 + op2
            reultLabel.text = "\(result)"
        } else if op == "-" {
            let result = op1 - op2
            reultLabel.text = "\(result)"
        } else if op == "*" {
            let result = op1 * op2
            reultLabel.text = "\(result)"
        } else if op == "/" {
            let result = op1 / op2
            reultLabel.text = "\(result)"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

