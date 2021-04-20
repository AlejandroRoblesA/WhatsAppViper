//
//  LandingViewController.swift
//  Landing
//
//  Created by Alejandro Robles on 19/04/21.
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
}

private extension LandingViewController {
    func setupUI(){
        logoImageView.image = UIImage(named: "logo", in: Bundle(for: LandingViewController.self), with: nil)
        startButton.setImage(UIImage(named: "start", in: Bundle(for: LandingViewController.self), with: nil), for: .normal)
    }
}
