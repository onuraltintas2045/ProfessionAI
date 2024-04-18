//
//  MessageView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 31.03.2024.
//

import SwiftUI

struct MessageView: View {
    var messageModel: MessageModel
    var body: some View {
        
            switch messageModel.owner {
            case .Person:
                HStack {
                    Spacer()
                    Text(messageModel.text)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .padding(.leading, 10)
                        .padding(.vertical)
                    Image("onur")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                        .clipShape(Circle())
                        .padding(.trailing)
                }
                .background(Color.blue.opacity(0.1))
                .frame(width: UIScreen.main.bounds.width * 0.95)
                .cornerRadius(16)
                
            case .Chatgpt:
                HStack{
                    Image("ChatGPTLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40)
                        .clipShape(Circle())
                        .padding(.leading)
                    Text(messageModel.text)
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .padding(.trailing, 10)
                        .padding(.vertical)
                    Spacer()
                }
                .background(Color.green.opacity(0.1))
                .frame(width: UIScreen.main.bounds.width * 0.95)
                .cornerRadius(16)
            }
            
        
    }
}

#Preview {
    MessageView(messageModel: MessageModel(text: "Bu benim sorum Bu benim sorum Bu benim sorum Bu benim sorum Bu benim sorum Bu benim sorum", owner: .Person))
}
