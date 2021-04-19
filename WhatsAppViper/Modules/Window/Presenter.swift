//
//  Presenter.swift
//  Window
//
//  Created by Alejandro Robles on 19/04/21.
//

import Foundation

protocol Routing {
    func routeToLanding()
}

class Presenter: Presentation {
    private let router: Routing
    
    init(router: Routing) {
        self.router = router
    }
}
