//
//  Builder.swift
//  ChatroomLogin
//
//  Created by Alejandro Robles on 20/04/21.
//

import UIKit
import Utility

public final class Builder {
    
    public static func builder() -> UIViewController{
        let storyboard = UIStoryboard.init(name: "ChatroomLogin", bundle: Bundle.init(for: self))
        let view = ChatroomLoginViewController.instantiate(from: storyboard)
        return view
    }
    
}
