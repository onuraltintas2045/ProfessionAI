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



var message1 = MessageModel(text: "Böbreklerim ağrıyor neden olabilir? Bu konuda herhangi bir bilgin var mı?", owner: .Person)
var message2 = MessageModel(text: "Böbrek ağrısı pek çok farklı nedenden kaynaklanabilir ve ciddi bir sağlık sorununun belirtisi olabilir. Böbrek ağrısının bazı yaygın nedenleri şunlar olabilir:Böbrek Taşları: Böbreklerde oluşan taşlar, böbrek ağrısının en sık nedenlerinden biridir. Taşlar, böbrekten idrar yolu boyunca geçerken şiddetli ağrıya neden olabilirç", owner: .Chatgpt)
var message3 = MessageModel(text: "bobreklerim ağrıyor neden olabilir ?", owner: .Person)
var message4 = MessageModel(text: "Böbrek ağrısı pek çok farklı nedenden kaynaklanabilir ve ciddi bir sağlık sorununun belirtisi olabilir. Böbrek ağrısının bazı yaygın nedenleri şunlar olabilir:Böbrek Taşları: Böbreklerde oluşan taşlar, böbrek ağrısının en sık nedenlerinden biridir. Taşlar, böbrekten idrar yolu boyunca geçerken şiddetli ağrıya neden olabilir", owner: .Chatgpt)
var message5 = MessageModel(text: "bobreklerim ağrıyor neden olabilir ?", owner: .Person)
var message6 = MessageModel(text: "Böbrek ağrısı pek çok farklı nedenden kaynaklanabilir ve ciddi bir sağlık sorununun belirtisi olabilir. Böbrek ağrısının bazı yaygın nedenleri şunlar olabilir:Böbrek Taşları: Böbreklerde oluşan taşlar, böbrek ağrısının en sık nedenlerinden biridir. Taşlar, böbrekten idrar yolu boyunca geçerken şiddetli ağrıya neden olabilir", owner: .Chatgpt)
