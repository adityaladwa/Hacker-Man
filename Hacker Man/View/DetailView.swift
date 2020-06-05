//
//  DetailView.swift
//  Hacker Man
//
//  Created by Aditya Ladwa on 05/06/20.
//  Copyright © 2020 Aditya Ladwa. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}
