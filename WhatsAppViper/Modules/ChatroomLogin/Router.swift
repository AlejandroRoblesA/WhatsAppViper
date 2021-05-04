//
//  Router.swift
//  ChatroomLogin
//
//  Created by Alejandro Robles on 02/05/21.
//

import UIKit

class Router {
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController){
        self.viewController = viewController
    }
    
}

extension Router: Routing {
    
}
