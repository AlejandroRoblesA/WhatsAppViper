//
//  Builder.swift
//  Landing
//
//  Created by Alejandro Robles on 19/04/21.
//

import UIKit
import Utility

public final class Builder{
    
    public static func build() -> UIViewController{
        let storyboard = UIStoryboard.init(name: "Landing", bundle: Bundle.init(for: self))
        let view = LandingViewController.instantiate(from: storyboard)
        return view
    }
    
}
