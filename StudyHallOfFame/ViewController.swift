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
        view.backgroundColor = .black
    }

}

