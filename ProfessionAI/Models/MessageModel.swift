//
//  MessageModel.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 31.03.2024.
//

import Foundation

struct MessageModel: Identifiable {
    var id = UUID()
    var text: String
    var owner: Owner
}

enum Owner{
    case Person
    case Chatgpt
}
