//
//  ProfessionView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 28.03.2024.
//

import SwiftUI

struct ProfessionView: View {
    var profession: ProfessionModel
    var body: some View {
        VStack{
            Image(profession.imageName).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 125)
            Text(profession.title)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding()
        .border(Color.black, width: 2)
        .cornerRadius(3)

    }
}

#Preview {
    ProfessionView(profession: doctor)
}
