//
//  ViewController.swift
//  StudyHallOfFame
//
//  Created by Danila Savitsky on 4.05.25.
//

import UIKit

class ViewController: UIViewController {
    
   
    lazy var myView: FirstView = FirstView(frame: .zero)
    override func loadView() {
        
        myView.delegate = self
        view = myView
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationItem.title = "Iphones"
    
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        view.backgroundColor =  #colorLiteral(red: 0.2135421932, green: 0.716583252, blue: 0.9282645583, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.layer.cornerRadius = 8
    }

}

