//
//  ProfListView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 4.04.2024.
//

import SwiftUI

struct ProfListView: View {
    var rol: Roles
    var naviTitle: String
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading){
                    ForEach(profList.filter {$0.role == rol}) { prof in
                        HStack{
                            Image(prof.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 125)
                                .cornerRadius(15)
                                .padding(.trailing, 35)
                            VStack(alignment: .leading){
                                Text(prof.name)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 10)
                                Text(prof.explanation)
                                    .font(.subheadline)
                                    .padding(.bottom, 15)
                                RatingView(rating: prof.rate, maxRating: 5)
                                    .frame(width: 75)
                            }
                            .padding(.trailing, 25)
                            Spacer()
                        }
                        .padding()
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.95, height: 200)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(25)
                }
                .padding()
                
            }
            .navigationTitle(naviTitle)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    ProfListView(rol: .doctor, naviTitle: "Title")
}
