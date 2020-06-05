//
//  WebView.swift
//  Hacker Man
//
//  Created by Aditya Ladwa on 05/06/20.
//  Copyright © 2020 Aditya Ladwa. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}


struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "http://www.google.com")
    }
}
