//
//  ShareUserDefaults.swift
//  Test Tecnical Oswaldo
//
//  Created by Oswaldo Jeisson Escobar Huisa on 9/02/22.
//

import Foundation
import UIKit

public class ShareUserDefaults{
    //private static UserDefaults preferences
    let defaults = UserDefaults.standard
    // PRIMER ACCESO A MENU
    public let  PREF_ISFIRSTLOADMENU = "pref_firstloadmenu";
    
    public func getFlagIsFirstLoadMenu()->Bool {
        var variable = false
        variable = defaults.object(forKey:PREF_ISFIRSTLOADMENU) as? Bool ?? false
        return variable
    }
    
    public func setFlagIsFirstLoadMenu(isFirtLoadMenu:Bool) {
        defaults.set(isFirtLoadMenu, forKey: PREF_ISFIRSTLOADMENU)
    }
}
