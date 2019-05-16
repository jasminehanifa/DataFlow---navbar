//
//  ViewController.swift
//  DataFlowExample
//
//  Created by Jasmine Hanifa Mounir on 16/05/19.
//  Copyright © 2019 Jasmine Hanifa Mounir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullNameTextField.delegate = self
        phoneTextField.delegate = self
    }
    
    //action buat segue
    @IBAction func registerUser(_ sender: Any) {
        //action buat segue pindah halaman
        performSegue(withIdentifier: "GoToHome", sender: nil)
    }
    
    //fungsi yang jalan setelah perormSegue, salah satu kegunaannya adalah untuk passing data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? HomeViewController{
            //kita set nilai name di HomeViewController ke textfield
            destination.name = fullNameTextField.text
        }
    }
    
}

//textfield delegate
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullNameTextField{
            phoneTextField.becomeFirstResponder()
        }else if textField == phoneTextField{
            textField.resignFirstResponder()
        }
        return true
    }
}

