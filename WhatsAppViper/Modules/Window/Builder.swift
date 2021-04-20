//
//  Builder.swift
//  WhatsAppViper
//
//  Created by Alejandro Robles on 19/04/21.
//

import UIKit
import Landing

public final class Builder {
    
    public static func build(windowScene: UIWindowScene) -> UIWindow{
        let window = Window(windowScene: windowScene)
        
        let landingModule = Landing.Builder.build
        
        let router = Router(
            window: window,
            submodules: (
                landingModule: landingModule, ()
            )
        )
        
        
        let presenter = Presenter(router: router)
        window.presenter = presenter
        
        return window
    }
    
}
