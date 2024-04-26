//
//  ProfessionalList.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 4.04.2024.
//

import Foundation

struct Professional: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var explanation: String
    var rate: Double
    var role: Roles
}

var profList: [Professional] = [doctor1, doctor2, doctor3, doctor4, doctor5, lawyer1, lawyer2, lawyer3, lawyer4, lawyer5, pt1, pt2, pt3, pt4, pt5, nutritionist1, nutritionist2, nutritionist3, nutritionist4, nutritionist5, mathematician1, mathematician2, mathematician3, mathematician4, mathematician5, scientist1, scientist2, scientist3, scientist4, scientist5, softwareDeveloper1, softwareDeveloper2, softwareDeveloper3, softwareDeveloper4, softwareDeveloper5]

var doctor1 = Professional(imageName: "doctor1", name: "Cafer Sonmez", explanation: "Açıklama...", rate: 4.9, role: .doctor)
var doctor2 = Professional(imageName: "doctor2", name: "Elif Bulut", explanation: "Açıklama...", rate: 4.5, role: .doctor)
var doctor3 = Professional(imageName: "doctor3", name: "Ihsan Korkmaz", explanation: "Açıklama...", rate: 4.8, role: .doctor)
var doctor4 = Professional(imageName: "doctor4", name: "Deniz Emsal", explanation: "Açıklama...", rate: 5, role: .doctor)
var doctor5 = Professional(imageName: "doctor5", name: "Melike Haktan", explanation: "Açıklama...", rate: 4.7, role: .doctor)

var lawyer1 = Professional(imageName: "lawyer1", name: "Harvey Specter", explanation: "Açıklama...", rate: 4.9, role: .lawyer)
var lawyer2 = Professional(imageName: "lawyer2", name: "Mike Ross", explanation: "Açıklama...", rate: 4.4, role: .lawyer)
var lawyer3 = Professional(imageName: "lawyer3", name: "Ayşe Kurt", explanation: "Açıklama...", rate: 4.6, role: .lawyer)
var lawyer4 = Professional(imageName: "lawyer4", name: "Helin Demiral", explanation: "Açıklama...", rate: 4.8, role: .lawyer)
var lawyer5 = Professional(imageName: "lawyer5", name: "Emine Arel", explanation: "Açıklama...", rate: 5, role: .lawyer)

var pt1 = Professional(imageName: "pt1", name: "Dwayne Johnson", explanation: "Açıklama...", rate: 4.6, role: .personalTrainer)
var pt2 = Professional(imageName: "pt2", name: "Chris Hemsworth", explanation: "Açıklama...", rate: 4.7, role: .personalTrainer)
var pt3 = Professional(imageName: "pt3", name: "Meryem Can", explanation: "Açıklama...", rate: 4.9, role: .personalTrainer)
var pt4 = Professional(imageName: "pt4", name: "Aylin Bulut", explanation: "Açıklama...", rate: 5.0, role: .personalTrainer)
var pt5 = Professional(imageName: "pt5", name: "Elif Çalışkan", explanation: "Açıklama...", rate: 4.9, role: .personalTrainer)

var nutritionist1 = Professional(imageName: "doctor1", name: "Cafer Sonmez", explanation: "Açıklama...", rate: 4.9, role: .nutritionist)
var nutritionist2 = Professional(imageName: "doctor2", name: "Elif Bulut", explanation: "Açıklama...", rate: 4.5, role: .nutritionist)
var nutritionist3 = Professional(imageName: "doctor3", name: "Ihsan Korkmaz", explanation: "Açıklama...", rate: 4.8, role: .nutritionist)
var nutritionist4 = Professional(imageName: "doctor4", name: "Deniz Emsal", explanation: "Açıklama...", rate: 5, role: .nutritionist)
var nutritionist5 = Professional(imageName: "doctor5", name: "Melike Haktan", explanation: "Açıklama...", rate: 4.7, role: .nutritionist)

var mathematician1 = Professional(imageName: "lawyer1", name: "Harvey Specter", explanation: "Açıklama...", rate: 4.9, role: .mathematician)
var mathematician2 = Professional(imageName: "lawyer2", name: "Mike Ross", explanation: "Açıklama...", rate: 4.4, role: .mathematician)
var mathematician3 = Professional(imageName: "lawyer3", name: "Ayşe Kurt", explanation: "Açıklama...", rate: 4.6, role: .mathematician)
var mathematician4 = Professional(imageName: "lawyer4", name: "Helin Demiral", explanation: "Açıklama...", rate: 4.8, role: .mathematician)
var mathematician5 = Professional(imageName: "lawyer5", name: "Emine Arel", explanation: "Açıklama...", rate: 5, role: .mathematician)

var scientist1 = Professional(imageName: "pt1", name: "Dwayne Johnson", explanation: "Açıklama...", rate: 4.6, role: .scientist)
var scientist2 = Professional(imageName: "pt2", name: "Chris Hemsworth", explanation: "Açıklama...", rate: 4.7, role: .scientist)
var scientist3 = Professional(imageName: "pt3", name: "Meryem Can", explanation: "Açıklama...", rate: 4.9, role: .scientist)
var scientist4 = Professional(imageName: "pt4", name: "Aylin Bulut", explanation: "Açıklama...", rate: 5.0, role: .scientist)
var scientist5 = Professional(imageName: "pt5", name: "Elif Çalışkan", explanation: "Açıklama...", rate: 4.9, role: .scientist)

var softwareDeveloper1 = Professional(imageName: "lawyer1", name: "Harvey Specter", explanation: "Açıklama...", rate: 4.9, role: .softwareDeveloper)
var softwareDeveloper2 = Professional(imageName: "lawyer2", name: "Mike Ross", explanation: "Açıklama...", rate: 4.4, role: .softwareDeveloper)
var softwareDeveloper3 = Professional(imageName: "lawyer3", name: "Ayşe Kurt", explanation: "Açıklama...", rate: 4.6, role: .softwareDeveloper)
var softwareDeveloper4 = Professional(imageName: "lawyer4", name: "Helin Demiral", explanation: "Açıklama...", rate: 4.8, role: .softwareDeveloper)
var softwareDeveloper5 = Professional(imageName: "lawyer5", name: "Emine Arel", explanation: "Açıklama...", rate: 5, role: .softwareDeveloper)
