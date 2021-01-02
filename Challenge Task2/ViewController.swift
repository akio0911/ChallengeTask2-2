//
//  ViewController.swift
//  Challenge Task2
//
//  Created by 松島悠人 on 2021/01/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
        
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
    
        let totalNumber: Int
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            totalNumber = number1 + number2
        case 1:
            totalNumber = number1 - number2
        case 2:
            totalNumber = number1 * number2
        case 3:
            guard number2 != 0 else {
                //アラートのタイトル
                let dialog = UIAlertController(title: "エラー", message: "0で割ることはできません", preferredStyle: .alert)
                //ボタンのタイトル
                dialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                //実際に表示させる
                self.present(dialog, animated: true, completion: nil)
                
                return
            }
            
            totalNumber = number1 / number2
        default:
            return
        }
        
        label.text = String(totalNumber)
    }
}
