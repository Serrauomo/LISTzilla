//
//  MovieListView.swift
//  Kaijuued
//
//  Created by Davide Serrano on 10/12/24.
//

import SwiftUI

struct MovieListView: View {
    let kaijuMovies: [Movie] // L'array di film dei Kaijuu
    
// MARK: - SEARCH BAR FILTERS -
    @State private var searchText = ""
// FILTER BY MOVIE NAME
    var filteredMovies: [Movie] {
        if searchText.isEmpty {
            return kaijuMovies
        } else {
            return kaijuMovies.filter { movie in
                movie.title.lowercased().contains(searchText.lowercased())
            }
        }
    }
// FILTER BY MOVIE ERA
    var filteredEras: [MovieEra] {
        if searchText.isEmpty {
            return MovieEra.allCases
        } else {
            return Array(Set(filteredMovies.map { $0.era })).sorted { $0.order < $1.order }
        }
    }
    
// MARK: - LIST VIEW -
    var body: some View {
        NavigationView {
            VStack {
// SEARCH BAR
                SearchBar(text: $searchText)
                    .padding(.top, 10)
// ERA SCROLL VIEW - SEARCH NO FOUND -
                ScrollView {
                    if filteredMovies.isEmpty == false {
                        movieList
                    } else {
                        ContentUnavailableView("No movies found", image:"sadzilla")
                            .cornerRadius(150)
                    }
                }
                .animation(.default, value: filteredMovies)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("LISTzilla")
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
            }
        }
    }
// MOVIE VERTICAL SCROLLING
    var movieList: some View {
        LazyVStack(spacing: 20) {
            ForEach(filteredEras, id: \.self) { era in
                Section {
// MOVIE HORIZONTAL SCROLLING
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(
                                filteredMovies
                                    .filter { $0.era == era }
                                    .sorted { $0.year < $1.year }
                            ) { movie in
                                NavigationLink(destination: MovieDetailView(movie: movie)) {
                                    VStack {
                                        Image(movie.poster)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 250)
                                            .cornerRadius(8)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(height: 250)
                } header: {
                    Text(era.rawValue)
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading).padding(.leading)
                        .accessibilityLabel(era.accessibilityLabel)
                }
            }
        }
        .padding(.top, 10)
    }
}

// MARK: - SEARCH BAR IMPOSTATION -
struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                        Spacer()
                    }
                )
                .padding(.horizontal)
        }
        .frame(height: 40)
    }
}
