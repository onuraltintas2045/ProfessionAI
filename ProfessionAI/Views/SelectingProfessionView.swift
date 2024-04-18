//
//  SelectingProfessionView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 28.03.2024.
//

import SwiftUI

struct SelectingProfessionView: View {
    @Binding var profession: ProfessionModel
    var body: some View {
        ZStack(alignment: .topTrailing){
            VStack{
                Image(profession.imageName).resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 125)
                Text(profession.title)
                    .font(.title3)
                    .fontWeight(.bold)
            }
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .foregroundStyle(Color.blue)
                .opacity(profession.isSelected ? 1 : 0)
                
        }
        .padding()
        .border((profession.isSelected) ? Color.blue : Color.black, width: profession.isSelected ? 5 : 2)
        .cornerRadius(3)
        .onTapGesture {
            profession.isSelected.toggle()
        }

    }
    
}
