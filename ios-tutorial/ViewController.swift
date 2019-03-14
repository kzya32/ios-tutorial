//
//  ViewController.swift
//  ios-tutorial
//
//  Created by 藤森 一矢 on 2019/03/13.
//  Copyright © 2019 Kazuya Fujimori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0
    
    @IBOutlet weak var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func button (){
        
//        memo
//
//        guard let number = number else { return }
//
//        if let number = self.number {
//            number.byteSwapped
//            number.customMirror
//            number.signum()
//        }
//
//        let number = self.number ?? 100
////        number = nil
//        number.byteSwapped
//        number.customMirror
//        number.signum()
        
        
        number += 1
        label.text = String(number)
    }

}

