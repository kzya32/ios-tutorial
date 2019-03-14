//
//  InputViewController.swift
//  ios-tutorial
//
//  Created by 藤森 一矢 on 2019/03/13.
//  Copyright © 2019 Kazuya Fujimori. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var message:UILabel!
    
    @IBAction func displayAlert() {
        let title = "Input Text"
        
        let desc = "The message should be short. Complete Sentence."
        
        let alert = UIAlertController(title: title, message: desc, preferredStyle: UIAlertController.Style.alert)
        alert.addTextField { textField in
            textField.placeholder = "Message"
            textField.keyboardAppearance = .dark
        }
        
//        let button = UIAlertAction(title: "Button", style: .cancel) { action in
//            if let inputText = alert.textFields?.first?.text {
//                self.message.text = inputText
//            }
//        }
//        alert.addAction(button)
//        let cancel = UIAlertAction(title: "Cancel",
//                                         style: .default,
//                                         handler: nil)
//        alert.addAction(cancel)
//        alert.preferredAction = button
        
        let confirmAction = UIAlertAction(title: "Button", style: .default, handler: { [weak self](action)  in
            if let inputText = alert.textFields?.first?.text {
                guard let self = self else { return }
                self.message.text = inputText
            }
        })
        alert.addAction(confirmAction)

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
        })
        alert.addAction(cancelAction)

        alert.preferredAction = confirmAction
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
