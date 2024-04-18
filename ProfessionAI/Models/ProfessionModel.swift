//
//  ProfessionModel.swift
//  ProfessionAI
//
//  Created by Onur Altintas on 28.03.2024.
//

import Foundation


struct ProfessionModel: Identifiable {
    var id = UUID()
    var title: String
    var role: String
    var imageName: String
    var offerString: String
    var professionListName: Roles
    var isSelected: Bool
}

enum Roles{
    case doctor
    case lawyer
    case mathematician
    case scientist
    case nutritionist
    case personalTrainer
    case softwareDeveloper
}

var lawyer: ProfessionModel = ProfessionModel(
    title: "Lawyer",
    role: "Lawyer",
    imageName: "Lawyer",
    offerString: "Contact a Lawyer",
    professionListName: .lawyer,
    isSelected: true
)
var doctor: ProfessionModel = ProfessionModel(
    title: "Doctor",
    role: "Doctor",
    imageName: "Doctor",
    offerString: "Contact a Doctor",
    professionListName: .doctor,
    isSelected: true
)
var mathematician: ProfessionModel = ProfessionModel(
    title: "Math",
    role: "Mathematician",
    imageName: "Math",
    offerString: "Contact a Mathematician",
    professionListName: .mathematician,
    isSelected: false
)
var scientist: ProfessionModel = ProfessionModel(
    title: "Science",
    role: "Scientist",
    imageName: "Science",
    offerString: "Contact a Scientist",
    professionListName: .scientist,
    isSelected: true
)
var nutritionist: ProfessionModel = ProfessionModel(
    title: "Diet",
    role: "Nutritionist",
    imageName: "Diet",
    offerString: "Contact a Nutritionist",
    professionListName: .nutritionist,
    isSelected: false
)
var personalTrainer: ProfessionModel = ProfessionModel(
    title: "Fitness",
    role: "Personal Trainer",
    imageName: "Fitness",
    offerString: "Contact a Personal Trainer",
    professionListName: .personalTrainer,
    isSelected: false
)
var softwareDeveloper: ProfessionModel = ProfessionModel(
    title: "Software",
    role: "Software Developer",
    imageName: "Coding",
    offerString: "Contact a Software Developer",
    professionListName: .softwareDeveloper,
    isSelected: true
)





var selectedRoleList: [ProfessionModel] = [
    doctor,
    lawyer,
    scientist,
    softwareDeveloper,
]

var allProfessionList: [ProfessionModel] = [
    doctor,
    lawyer,
    mathematician,
    scientist,
    nutritionist,
    personalTrainer,
    softwareDeveloper
]
