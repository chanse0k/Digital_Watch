//
//  ViewController.swift
//  Digital_Watch
//
//  Created by D7703_27 on 2018. 4. 11..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTimer: UILabel!
    @IBOutlet weak var myswi: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myswi.isOn = false
        // Do any additional setup after loading the view, typically from a nib.
         // 1초마다 업데이트하기(시간이 가게 한다)
        //myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        lblTimer.text = formatter.string(from: date)
        //        lblTime.text = String(describing: date)
    }
    
    
    @IBAction func swi(_ sender: Any) {
        
        if myswi.isOn == true{
           
            //클로저를 이용해서 사용
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true , block: {(myTimer) in self.updateTime()})
            
        }else {
            myTimer.invalidate()
            lblTimer.text = "시간을 보려면 버튼을 누르세요."
    }
    
}
}
