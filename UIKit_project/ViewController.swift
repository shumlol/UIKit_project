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
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var dataPicker: UIDatePicker!
    @IBOutlet var switchLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControl.insertSegment(withTitle: "Four", at: 3, animated: false)
        setupSlider()
        setupMainLabel()
        
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
    
    @IBAction func sliderAction() {
        mainLabel.text = String(slider.value)
        //view.alpha = CGFloat(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat(slider.value)) //UIColor
    }
    
    @IBAction func doneButtonPressed() {
        guard let inputText = textField.text, !inputText.isEmpty else {
            showAlert(with: "Text field is empty", and: "Please enter your name")
            return
        }
        
        if let _ = Double(inputText) {
            showAlert(with: "Wrong fornat", and: "Please enter your name")
            return
        }
        mainLabel.text = textField.text
    }
    
    @IBAction func dataPickerAction() {
        let dataFormatter = DateFormatter()
        dataFormatter.dateStyle = .long
        mainLabel.text = dataFormatter.string(from: dataPicker.date)
    }
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        dataPicker.isHidden = !sender.isOn
        switchLabel.text = sender.isOn ? "Hide Data Picker" : "Show Data Picker"
    }
    

    // MARK: - Private Methods
    private func setupMainLabel() {
        mainLabel.text = String(slider.value)
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
    }
    
    private func setupSlider() {
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .white
        slider.maximumTrackTintColor = .black
        slider.thumbTintColor = .white
        
    }
    
}

    // MARK: - UIAlertController
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.textField.text = ""
        }
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
