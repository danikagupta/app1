//
//  ContentView.swift
//  app1
//
//  Created by Dani Gupta on 10/6/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct ContentView: View {
    var body: some View {
        Button("Hello, world!") {
            let treeName="Apple"
            let kcValue=LoadPlantData.getKc(treeName)
            print("Just saw kc=\(kcValue)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
