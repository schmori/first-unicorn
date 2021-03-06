//
//  ContentView.swift
//  my-first-one
//
//  Created by Gloria Geise on 03.10.19.
//  Copyright © 2019 Gloria Geise. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var selection = 2

    init() {
        UITabBar.appearance().backgroundColor = UIColor(named: "pink_neon")
    }

    var body: some View {
        TabView(selection: $selection) {
            Text("Einstellungen").bold()
                .tabItem ({ 
                    Image("settings_icon_32")
                        .imageScale(.large)
                })
                .tag(1)
            Text("deine Produktsuche").bold()
                .tabItem {
                    Image("supermarket_icon_32")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
