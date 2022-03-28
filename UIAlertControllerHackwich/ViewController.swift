//
//  ViewController.swift
//  UIAlertControllerHackwich
//
//  Created by isa fontana on 3/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelToChangeFromAlert: UILabel!
    
    

    @IBAction func onAddButtonTapped(_ sender: Any) {
        
//ALERT:
        let alert = UIAlertController(title: "What is Your Name?", message: nil, preferredStyle: .alert)
        
        self.present(alert, animated: true, completion: nil)
        
        
        let ok = UIAlertAction(title: "OK", style: .default){ action in
            print("OK Pressed")
            
            if let firstName = alert.textFields![0].text,
               let lastName = alert.textFields![1].text {
                
                self.labelToChangeFromAlert.text = ("Name: " + firstName + "" + lastName)
            }
        }
        alert.addAction(ok)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancel)
        
//TEXT FIELDS:
        alert.addTextField(configurationHandler: {textField in
            textField.placeholder = "First Name"
        })
        alert.addTextField(configurationHandler: {textField in
            textField.placeholder = "Last Name"
        })
        
//        let ok2 = UIAlertAction(title: "OK", style: .default){ action in
//            print(alert.textFields?.first)
//            print(alert.textFields?.last)
//LABEL CHANGE:
            let ok3 = UIAlertAction(title: "OK", style: .default){ [self] action in
//                if let firstName = alert.textFields![0].text,
//                   let lastName = alert.textFields![1].text {
//
//                    self.labelToChangeFromAlert.text = ("Name: " + firstName + "" + lastName)
                }
                
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        
}


