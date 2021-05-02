//
//  ChatroomLoginViewController.swift
//  ChatroomLogin
//
//  Created by Alejandro Robles on 20/04/21.
//

import UIKit
import RxSwift
import RxCocoa

class ChatroomLoginViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
}

private extension ChatroomLoginViewController {
    
    func setupUI(){
        
        avatarImageView.image = UIImage(named: "female", in: Bundle(for: ChatroomLoginViewController.self), with: nil)
        loginButton.setImage(UIImage(named: "login", in: Bundle(for: ChatroomLoginViewController.self), with: nil), for: .normal)
        
    }
    
}
