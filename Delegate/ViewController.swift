//
//  ViewController.swift
//  Delegate
//
//  Created by Nurasyl on 03.03.2023.
//

import UIKit

class ViewController: UIViewController, SetCategoryProtocol {
    
    @IBOutlet weak var categoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openModalView(_ sender: Any) {
        let modal = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        
        modal.modalPresentationStyle = .overCurrentContext
        
        modal.categoryArray = ["Бакалея", "Cладости", "Табачные изделия", "Весовые"]
        
        modal.delegate = self
        
        present(modal, animated: true, completion: nil)
    }
    
    func setCategory(_ category: String) {
        categoryButton.setTitle(category, for: .normal)
    }
}

