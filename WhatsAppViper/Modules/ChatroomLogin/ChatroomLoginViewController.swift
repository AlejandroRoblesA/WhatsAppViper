//
//  ChatroomLoginViewController.swift
//  ChatroomLogin
//
//  Created by Alejandro Robles on 20/04/21.
//

import UIKit
import RxSwift
import RxCocoa

protocol Presentation {
    typealias Input = (
        username: Driver<String>,
        email: Driver<String>
    )
    typealias Output = (
        enableLogin: Driver<Bool>, ()
    )
    typealias Producer = (Presentation.Input) -> Presentation
    
    var input: Input { get }
    var output: Output { get }
}

class ChatroomLoginViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    private var presenter: Presentation!
    var presenterProducer: Presentation.Producer!
    
    private let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        presenter = presenterProducer((
            username: usernameTextField.rx.text.orEmpty.asDriver(),
            email: emailTextField.rx.text.orEmpty.asDriver()
        ))
        setupUI()
        setupBinding()
    }
    
}

private extension ChatroomLoginViewController {
    
    func setupUI(){
        
        avatarImageView.image = UIImage(named: "female", in: Bundle(for: ChatroomLoginViewController.self), with: nil)
        loginButton.setImage(UIImage(named: "login", in: Bundle(for: ChatroomLoginViewController.self), with: nil), for: .normal)
    }
    
    func setupBinding(){
        presenter.output.enableLogin
            .debug("Enable Login Driver", trimOutput: false)
            .drive(loginButton.rx.isEnabled)
            .disposed(by: bag)
    }
    
}
