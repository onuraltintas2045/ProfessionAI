//
//  GPTModel.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 31.03.2024.
//

import Foundation
import OpenAI

struct CompletionsQuery: Codable {
    /// ID of the model to use.
    public let model: Model
    /// The prompt(s) to generate completions for, encoded as a string, array of strings, array of tokens, or array of token arrays.
    public let prompt: String
    /// What sampling temperature to use. Higher values means the model will take more risks. Try 0.9 for more creative applications, and 0 (argmax sampling) for ones with a well-defined answer.
    public let temperature: Double?
    /// The maximum number of tokens to generate in the completion.
    public let maxTokens: Int?
    /// An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.
    public let topP: Double?
    /// Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.
    public let frequencyPenalty: Double?
    /// Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.
    public let presencePenalty: Double?
    /// Up to 4 sequences where the API will stop generating further tokens. The returned text will not contain the stop sequence.
    public let stop: [String]?
    /// A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse.
    public let user: String?
}



