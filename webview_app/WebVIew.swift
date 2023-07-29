//
//  WebView.swift
//  oz-browser-engine-app
//
//  Created by たむらけいと on 2022/12/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()

        config.allowsInlineMediaPlayback = true // 動画のインライン再生を許可する

        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else {
            return
        }

        uiView.load(URLRequest(url: url))
    }
}
