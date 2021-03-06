//
//  Builder.swift
//  WhatsAppViper
//
//  Created by Alejandro Robles on 19/04/21.
//

import UIKit
import Landing
import ChatroomLogin

public final class Builder {
    
    public static func build(windowScene: UIWindowScene) -> UIWindow{
        let window = Window(windowScene: windowScene)
        
        let landingModule = Landing.Builder.build
        let loginModule = ChatroomLogin.Builder.builder
        
        let router = Router(
            window: window,
            submodules: (
                landingModule: landingModule,
                loginModule: loginModule
            )
        )
        
        
        let presenter = Presenter(router: router)
        window.presenter = presenter
        
        return window
    }
    
}
