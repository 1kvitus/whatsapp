//
//  NavigationColor.swift
//  whatsapp
//
//  Created by choudhary kalash on 05/05/24.
//

import SwiftUI


struct NavigationBarcolor: ViewModifier {
    

    var backgroundColor: Color
    
    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    func body(content: Content) -> some View {
        content.background(backgroundColor)
    }
}


extension View {
    func navigationBarColor(backgroundColor: Color) -> some View {
        return modifier(NavigationBarcolor(backgroundColor: backgroundColor))
    }
}

