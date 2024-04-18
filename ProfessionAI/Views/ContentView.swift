//
//  ContentView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 150), spacing: 20)]
    @State var professionListesi: [ProfessionModel] = allProfessionList
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(professionListesi.filter { $0.isSelected}) { profession in
                        NavigationLink{
                            ChatBotView(profession: profession)
                        } label: {
                            ProfessionView(profession: profession)
                        }
                        
                    }
                    NavigationLink{
                        AddProfessionView(professionAllList: $professionListesi)

                    }
                    label: {
                        VStack{
                            Image("addElement").resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 125)
                            Text("Ekle")
                                .font(.title3)
                                .fontWeight(.bold)
                        }
                        .padding()
                        .border(Color.black, width: 2)
                        .cornerRadius(3)
                    }
                    
                }
                
            }
            .padding()
            .navigationTitle("Profession AI")
            .scrollIndicators(.hidden)
            
        }
    }
}

#Preview {
    ContentView()
}
