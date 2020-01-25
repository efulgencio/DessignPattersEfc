//
//  Settings.swift
//  DessignPattersEfc
//
//  Created by eduardo fulgencio on 24/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import Foundation



enum ThemeSetting {
    
    case darkMode, lightMode
    
    var description: String {
        
        switch self {
            
        case .darkMode:
            
            return "Dark mode is active"
            
        case .lightMode:
            
            return "Light mode is active"
            
        }
        
    }
    
}

class Settings {
    
    static let shared = Settings()
    // private (set) solo se puede modificar dentro de la clase
    private(set) var theme: ThemeSetting = .lightMode
    
    private init() {}
    
    func changeTheme(to theme: ThemeSetting) {
        
        self.theme = theme
        
    }
    
}
