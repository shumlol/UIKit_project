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
        switch segmentControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .white
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .white
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .white
        default:
            mainLabel.text = "The four segment is selected"
            mainLabel.textColor = .black
        }
    }
    
    // MARK: - Private Methods
    private func setupMainLabel() {
        mainLabel.text = "Quick help text and Label"
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
}
