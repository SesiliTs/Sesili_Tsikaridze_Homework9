//
//  ViewController.swift
//  Sesili_Tsikaridze_Homework9
//
//  Created by Sesili on 22.01.23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var sliderNumbers: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var calculateButtonLabel: UILabel!
    
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var generateValue1: UITextField!
    @IBOutlet weak var generateValue2: UITextField!
    @IBOutlet weak var generateValue3: UITextField!
    @IBOutlet weak var generateValue4: UITextField!
    @IBOutlet weak var generateValue5: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var valueArray: [Int] = []
    
    @IBAction func generateButton(_ sender: UIButton) {
        if sender.tag == 1 {
            generateValue1.text = "\(Int.random(in: 1...Int(sliderNumbers.value)))"
            if generateValue1 != nil {
                valueArray.append(Int(generateValue1.text!)!)
            }
        } else if sender.tag == 2 {
            generateValue2.text = "\(Int.random(in: 1...Int(sliderNumbers.value)))"
            if generateValue2 != nil {
                valueArray.append(Int(generateValue2.text!)!)
            }
        } else if sender.tag == 3 {
            generateValue3.text = "\(Int.random(in: 1...Int(sliderNumbers.value)))"
            if generateValue3 != nil {
                valueArray.append(Int(generateValue3.text!)!)
            }
        } else if sender.tag == 4 {
            generateValue4.text = "\(Int.random(in: 1...Int(sliderNumbers.value)))"
            if generateValue4 != nil {
                valueArray.append(Int(generateValue4.text!)!)
            }
        } else {
            generateValue5.text = "\(Int.random(in: 1...Int(sliderNumbers.value)))"
            if generateValue5 != nil {
                valueArray.append(Int(generateValue5.text!)!)
            }
        }
    }
    
    @IBAction func switchTurn(_ sender: UISwitch) {
        if mySwitch.isOn {
            switchLabel.text = "შეავსეთ ყველა ველი"
        } else {
            switchLabel.text = "შეავსეთ მინიმუმ 1 ველი"
        }
    }
    
    @IBAction func sliderNumberRange(_ sender: UISlider) {
        sliderLabel.text = "დიაპაზონი არის 1 - დან \(Int(sender.value)) - მდე"
    }
    
    
    
    func calculateFunc (_: [UITextField]) -> () {
        
       return
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        if mySwitch.isOn {
            if generateValue1.text?.isEmpty == false && generateValue2.text?.isEmpty == false && generateValue3.text?.isEmpty == false && generateValue4.text?.isEmpty == false && generateValue5.text?.isEmpty == false {
                calculateButtonLabel.text = "მონაცემთა საშუალო არის \((valueArray.reduce(0, +)) / valueArray.count)"
                calculateButtonLabel.textColor = .darkGray
            } else {
                calculateButtonLabel.text = "გთხოვთ შეავსოთ ყველა ველი"
                calculateButtonLabel.textColor = .red
            }
        } else {
            if generateValue1.text?.isEmpty == false || generateValue2.text?.isEmpty == false || generateValue3.text?.isEmpty == false || generateValue4.text?.isEmpty == false || generateValue5.text?.isEmpty == false {
                calculateButtonLabel.text = "მონაცემთა საშუალო არის \((valueArray.reduce(0, +)) / valueArray.count)"
                calculateButtonLabel.textColor = .darkGray
            } else {
                calculateButtonLabel.text = "გთხოვთ შეავსოთ მინიმუმ ერთი ველი"
                calculateButtonLabel.textColor = .red
            }
        }
    }
}

