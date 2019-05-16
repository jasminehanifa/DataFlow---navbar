//
//  HomeViewController.swift
//  DataFlowExample
//
//  Created by Jasmine Hanifa Mounir on 16/05/19.
//  Copyright © 2019 Jasmine Hanifa Mounir. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
