//
//  multitabview.swift
//  app1
//
//  Created by Dani Gupta on 10/6/22.
//

import SwiftUI

struct MultiTabView: View {
    var body: some View {
        TabView{
            WebView(url:URL(string:"https://aiclub.world/privacy")!)
                .tabItem{
                    Label("Info",systemImage: "info.circle.fill")
                }
            ContentView()
                .tabItem{
                    Label("Watering",systemImage: "leaf.circle.fill")
                }
            Tab3View()
                .tabItem{
                    Label("Credits",systemImage: "person.crop.circle.fill.badge.checkmark")
                }
        }
    }
}

struct Tab1View: View {
    var body: some View {
        Text("Page 1")
    }
}

struct Tab2View: View {
    var body: some View {
        Text("Page 2")
    }
}

struct Tab3View: View {
    var body: some View {
        Text("Page 3")
    }
}

struct MultiTabView_Previews: PreviewProvider {
    static var previews: some View {
        MultiTabView()
    }
}
