//
//  ContentView.swift
//  Threads
//
//  Created by Victor Chang on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
