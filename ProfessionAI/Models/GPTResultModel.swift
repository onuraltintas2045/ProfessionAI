//
//  GPTResultModel.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 14.05.2024.
//

import Foundation

struct ChatCompletion {
    let id: String
    let object: String
    let created: Int
    let model: String
    let systemFingerprint: String
    let choices: [Choice]
    let usage: Usage
}

struct Choice {
    let index: Int
    let message: Message
    let logprobs: [String]?
    let finishReason: String
}

struct Message {
    let role: String
    let content: String
}

struct Usage {
    let promptTokens: Int
    let completionTokens: Int
    let totalTokens: Int
}
