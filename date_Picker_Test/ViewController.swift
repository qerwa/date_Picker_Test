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
      
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
      }

      @IBAction func picker(_ sender: Any) {
            print("change Date Picker")
            
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss a EE"
            label.text = formatter.string(from: picker.date)
            
      }
      
}

