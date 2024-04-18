//
//  ChatBotView.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 28.03.2024.
//

import SwiftUI

struct ChatBotView: View {
    var profession: ProfessionModel
    @ObservedObject var viewModel = ChatBotViewModel()
    @State var question: String = ""
    @State var messageList: [MessageModel] = []
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink{
                    ProfListView(rol: profession.professionListName, naviTitle: profession.title)
                } label: {
                    HStack {
                        Image(profession.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 40)
                            .clipShape(Circle())
                            .padding(.leading, 20)
                        Text(profession.offerString)
                            .font(.title3)
                            .fontWeight(.bold)
                            .frame(width: UIScreen.main.bounds.width * 0.5)
                            .padding(.vertical)
                            .padding(.trailing, 20)
                    }
                }
                .background(Color.gray.opacity(0.3))
                .cornerRadius(20)
                .padding(.top, 30)
                
                ScrollView(.vertical) {
                    VStack(spacing: 20){
                        Spacer()
                        ForEach(messageList) {message in
                            MessageView(messageModel: message)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .scrollIndicators(.hidden)
                
                HStack{
                    Spacer()
                    TextField("Ne sormak istersiniz?",text: $question, axis: .vertical)
                        .padding(.horizontal)
                        .frame(height: 50)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(16)
                    
                    Button(action: {
                        
                        messageList.append(MessageModel(text: question, owner: .Person))
                        viewModel.getDataFromAPI(prompt: question) { result in
                            switch result {
                            case .success(let response):
                                messageList.append(response)
                            case .failure(let error):
                                print(error)
                            }
                        }
                         
                        question = ""
                        
                    }, label: {
                        Image(systemName: "arrow.up.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 40)
                            .opacity(question == "" ? 0.3 : 1)
                    })
                    Spacer()
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarTitle("Doktor AI", displayMode: .inline)
        }
    }
    
    func promptMaker(prompt: String) -> String {
        let newPrompt = """
        I want you to answer the text given below in 3 single quotes like a \(profession.role).
        Do your research as a doctor. State that it would be better to consult an expert on matters that require expertise.
        text: '''\(prompt)'''
        """
        return newPrompt
    }
}

#Preview {
    ChatBotView(profession: doctor)
}
