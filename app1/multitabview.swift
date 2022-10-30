//
//  multitabview.swift
//  app1
//
//  Created by Dani Gupta on 10/6/22.
//

import SwiftUI

struct MultiTabView: View {
    @AppStorage("lat") var lat=0.0
    @AppStorage("lon") var lon=0.0
    var body: some View {
        
        ZStack {
            Color.blue.opacity(0.2).ignoresSafeArea()
            TabView{
                /*
                WebView(url:URL(string:"https://sites.google.com/students.harker.org/aquatamer/aquatamer")!)
                    .tabItem{
                        Label("Info",systemImage: "info.circle.fill")
                    }
                 */
                WebView(url:URL(string:"https://sites.google.com/students.harker.org/aquatamer/the-problem")!)
                    .tabItem{
                        Label("Drought",systemImage: "leaf.circle.fill")
                    }
                AskAIView()
                    .tabItem{
                        Label("Calculate",systemImage: "sprinkler.and.droplets.fill")
                    }
                Tab3View()
                    .tabItem{
                        Label("Weather",systemImage: "cloud.rain.circle")
                    }
                /*
                WebView(url:URL(string:"https://sites.google.com/students.harker.org/aquatamer/our-solution")!)
                    .tabItem{
                        Label("Solution",systemImage: "info.circle.fill")
                    }
                WebView(url:URL(string:"https://sites.google.com/students.harker.org/aquatamer/learning-more")!)
                    .tabItem{
                        Label("Learn more",systemImage: "info.circle.fill")
                    }
                 */
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
    @AppStorage("lat") var lat=0.0
    @AppStorage("lon") var lon=0.0
    var body: some View {
        ZStack {
            Color.blue.opacity(0.20).ignoresSafeArea()
            WebView(url:URL(string:"https://forecast.weather.gov/MapClick.php?textField1=\(lat)&textField2=\(lon)")!)
        }
    }
}

struct MultiTabView_Previews: PreviewProvider {
    static var previews: some View {
        MultiTabView()
    }
}
