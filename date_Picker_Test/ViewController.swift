//
//  ViewController.swift
//  date_Picker_Test
//
//  Created by D7703_17 on 2018. 4. 11..
//  Copyright © 2018년 박금상. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
      @IBOutlet weak var picker: UIDatePicker!
      @IBOutlet weak var label: UILabel!
      @IBOutlet weak var NT: UILabel!
      var myTimer = Timer()
      
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
      }
      @IBAction func bt(_ sender: Any) {
            view.backgroundColor = UIColor.white
      }
      
      @IBAction func picker(_ sender: Any) {
            print("change Date Picker")
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy/MM/dd HH:mm:ss a EEEE"
            label.text = formatter.string(from: picker.date)
            
      }
      @objc func updateTime() {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY/MM/dd HH:mm:ss a EEEE"
            NT.text = formatter.string(from: date)
            
            if(NT.text == label.text){
                  view.backgroundColor = UIColor.yellow
            }
            
      }
      
}
  
