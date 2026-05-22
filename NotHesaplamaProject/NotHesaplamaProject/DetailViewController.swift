//
//  DetailViewController.swift
//  NotHesaplamaProject
//
//  Created by beyyzgur on 18.05.2026.
//

import UIKit

final class DetailViewController: UIViewController {
    @IBOutlet private weak var statusLabel: UILabel!
    
    var hesaplananNot: Double = 0
    var gectiMi: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if gectiMi == true {
            statusLabel.text = "Geçtiniizz!!🥳 \nNotunuz: \(Int(hesaplananNot))"
            view.backgroundColor = .greenBackground
        } else {
            statusLabel.text = "Seneye tekrar dene 🫠 \nNotunuz: \(Int(hesaplananNot))"
            view.backgroundColor = .redBackground
        }
    }
    
    @IBAction func yenidenHesaplaButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
