//
//  ViewController.swift
//  NotHesaplamaProject
//
//  Created by beyyzgur on 18.05.2026.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var vizeNotu: UILabel!
    @IBOutlet private weak var vizeSlider: UISlider!
    @IBOutlet private weak var finalNotu: UILabel!
    @IBOutlet private weak var finalSlider: UISlider!
    @IBOutlet private weak var devamsızlıkSwitch: UISwitch!
    @IBOutlet private weak var hesaplaButton: UIButton!
    
    var hesaplananNot: Double = 0
    var gectiMi: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
    }
    
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        if segue.identifier == "DetailViewController" {
            guard let detailViewController = segue.destination as? DetailViewController else {
                return
            }
            
            detailViewController.hesaplananNot = hesaplananNot
            detailViewController.gectiMi = gectiMi
            
        }
    }
    
    @IBAction func vizeSliderChanged(_ sender: UISlider) {
        let vizeNot = Int(sender.value)
        vizeNotu.text = "\(vizeNot)"
    }
    
    @IBAction func finalSliderChanged(_ sender: UISlider) {
        let finalNot = Int(sender.value)
        finalNotu.text = "\(finalNot)"
    }
    
    @IBAction func hesaplaButtonChanged(_ sender: UIButton) {
        let vizeNotu = Double(vizeSlider.value)
        let finalNotu = Double(finalSlider.value)
        
        if segmentedControl.selectedSegmentIndex == 0 {
            hesaplananNot = (vizeNotu * 0.4) + (finalNotu * 0.6)
        } else {
            hesaplananNot = (vizeNotu * 0.5) + (finalNotu * 0.5)
        }
        
        if devamsızlıkSwitch.isOn {
            gectiMi = false
        } else {
            gectiMi = hesaplananNot >= 50
        }
    }
    
    private func setupNavbar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
            .font: UIFont.boldSystemFont(ofSize: 32)
        ]
    }
}

