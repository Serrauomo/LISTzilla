//
//  ContentView.swift
//  Kaijuued
//
//  Created by Davide Serrano on 05/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MovieListView(kaijuMovies: kaijuMovies)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
