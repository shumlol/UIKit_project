//
//  ViewController.swift
//  UIKit_project
//
//  Created by Вадим Ахматханов on 17.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        segmentControl.insertSegment(withTitle: "Four", at: 3, animated: false)
    }
    
    @IBAction func segmentControlAction() {
    }
    
    private func setupMainLabel() {
        mainLabel.text = "Quick help text and Label"
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
}
