//
//  ContentView.swift
//  NavigationDestination
//
//  Created by Paul Wood on 7/20/19.
//  Copyright © 2019 Paul Wood. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView{
      List {
        NavigationLink(destination: DetailView()) {
          Text("Push View")
        }
      }
    }
  }
}

struct DetailView: View {
  @Environment(\.isPresented) var isPresented
  var body: some View {
    VStack {
      Text("Detail")
      Button(action: {
        self.isPresented?.value = false
      }) {
        Text("Back")
      }
    }.onAppear {
      print(self.isPresented ?? "Not even Set") // Debug for context
    }
  }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif
