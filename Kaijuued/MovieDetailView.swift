//
//  MovieDetailView.swift
//  Kaijuued
//
//  Created by Davide Serrano on 10/12/24.
//


import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    @State private var isTapped = false
    @State private var showNewImage = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
// MARK: - POSTER IMAGE -
                Image(movie.poster)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .cornerRadius(8)
                    .rotationEffect(.degrees(isTapped ? 15 : 0))
                    .animation(.easeInOut(duration: 0.3), value: isTapped)
                    .onTapGesture {
                        withAnimation {
                            isTapped.toggle()
                            showNewImage.toggle()
                        }
                    }
                    .accessibilityLabel("\(movie.title) Poster")
                    .padding(.leading, isTapped ? 30 : 0)
                
// MARK: - ANIMATION AND SECOND IMAGE -
                if showNewImage {
                    Image(movie.monsterender)  // Sostituisci con il nome della tua seconda immagine
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(8)
                        .transition(.move(edge: .leading).combined(with: .scale))
                        .animation(.easeInOut(duration: 0.5), value: showNewImage)
                        .padding(.top, 20)
                        .accessibilityHidden(true)
                         }
                
 // MARK: - MOVIE DESCRIPTION -
                   Text(movie.monsterDesigner)
                        .font(.body)
                        .fontWeight(.semibold)
                   Text(movie.title)
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.top, 10)
                   Text(movie.originaltitle)
                        .font(.title)
                        .fontWeight(.bold)
                   Text(movie.Director)
                        .font(.body)
                        .fontWeight(.semibold)
                HStack {
                    Text("Release Date:")
                    Text(String(movie.year))
                        .font(.title)
                        .fontWeight(.heavy)
                        }
                    Text( "DESCRIPTION:")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.top, 10)
                    Text(movie.description)
                        .font(.body)
                Spacer()
                .padding()
            }
            .padding()
            .navigationBarTitle(movie.title, displayMode: .inline)
        }
    }
}
