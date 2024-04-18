//
//  AddProfessionView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 28.03.2024.
//

import SwiftUI

struct AddProfessionView: View {
    var columns = [GridItem(.adaptive(minimum: 150), spacing: 20)]
    @Binding var professionAllList: [ProfessionModel]
    var body: some View {
        ScrollView {
            Spacer()
                .frame(height: 30)
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(professionAllList.indices, id: \.self) { index in
                    if professionAllList[index].isSelected {
                        SelectingProfessionView(profession: $professionAllList[index])
                    }
                }
                ForEach(professionAllList.indices, id: \.self) { index in
                    if !professionAllList[index].isSelected {
                        SelectingProfessionView(profession: $professionAllList[index])
                    }
                }
            }
            
            
        }
        .padding()
        .scrollIndicators(.hidden)
        .ignoresSafeArea(edges: .bottom)
    }
}


