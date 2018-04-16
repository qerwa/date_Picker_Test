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
      
      @IBAction func picker(_ sender: Any) {
            print("change Date Picker")
            
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY/MM/dd HH:mm:ss a EEEE"
            label.text = formatter.string(from: picker.date)
            
      }
      @objc func updateTime() {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "YYYY/MM/dd HH:mm:ss a EEEE"
            NT.text = formatter.string(from: date)
            
            if(NT.text == label.text){
                  let myAlert = UIAlertController(title: "알림", message: "설정된 시간입니다!", preferredStyle: .actionSheet)
                  let okAction = UIAlertAction(title: "종료", style: .default, handler: {(action:UIAlertAction) -> Void in
                        self.view.backgroundColor = UIColor.yellow
                  })
                  
                  let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {(action:UIAlertAction) -> Void in
                        self.view.backgroundColor = UIColor.white
                        
                  })
                  myAlert.addAction(okAction)
                  myAlert.addAction(cancelAction)
                  
                  present(myAlert, animated: true, completion: nil)
            }
       
      
      }
  
}
