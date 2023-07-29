//
//  ContentView.swift
//  oz-browser-engine-app
//
//  Created by たむらけいと on 2022/12/21.
//

import SwiftUI
import AVFoundation

var urlString = "http://localhost:3000"

struct ContentView: View {
    var body: some View {
        WebView(urlString: urlString)
            .ignoresSafeArea()  // フレームサイズをセーフエリア外まで広げる
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
