//
//  ChatBotViewModel.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 31.03.2024.
//

import Foundation
import OpenAI

class ChatBotViewModel: ObservableObject {
    var apiKey = "YOUR_API_KEY"
    var gptResponse: String = ""
    var previousResponse: String = ""
    func getDataFromAPI(prompt: String, completion: @escaping (Result<MessageModel,Error>) -> Void){
        let aiClient = OpenAI(apiToken: apiKey)
        let query = ChatQuery(model: "gpt-3.5-turbo",
                              messages:
                                [.init(role: .system, content: "You are a doctor"),
                                 .init(role: .assistant, content: self.previousResponse),
                                .init(role: .user, content: prompt)],
                              maxTokens: 400)
        aiClient.chats(query: query) { [self] result in
            switch result{
            case .success(let completionResult):
                if let content = completionResult.choices.first?.message.content {
                    DispatchQueue.main.async {
                        self.gptResponse = content
                        completion(.success(MessageModel(text: self.gptResponse, owner: .Chatgpt)))
                    }
                } else {
                    let error = NSError(domain: "YourErrorDomain", code: 1001, userInfo: [NSLocalizedDescriptionKey: "Content not found"])
                    completion(.failure(error))}
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    
}
