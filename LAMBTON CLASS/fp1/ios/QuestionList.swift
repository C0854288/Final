//
//  QuestionBank.swift
//  ios
//
//  Created by Sunkara Vishnu vardhan on 22/06/22.
//

import Foundation

class QuestionList
{
    var list = [Question]()
   
    init()
    {
        list.append(Question(image: "rajyasabha", questionText: "What Is The Name Of The Upperhouse In India?", choiceA: "Lok Sabha", choiceB: "Rajya Sabha", choiceC: "Parliment", choiceD: "Assembly", answer: 2))
        
        list.append(Question(image: "vote", questionText: "The minimum age of the voter in India is?", choiceA: "16", choiceB: "21", choiceC: "23", choiceD: "18", answer: 4))
        
        list.append(Question(image: "ottawa", questionText: "What Is The Capital Of Canada?", choiceA: "san fransico", choiceB: "ottawa", choiceC:  "Toronto", choiceD: "vancouver", answer: 2))
        
        list.append(Question(image: "melaniejoly", questionText: "Who Is The Current Foreign Minister Of Canada?" , choiceA: "melanie joly", choiceB: "anitha anand", choiceC:  "Omar Alghabra", choiceD: "sophie trudeau", answer: 1))
        
        list.append(Question(image: "loksabha", questionText: "The present Lok Sabha is the?" , choiceA: " 14th Lok Sabha", choiceB: "17th Lok Sabha", choiceC: "15th Loksabha", choiceD: "16th Loksabha", answer: 2))
        
        list.append(Question(image: "emmanuel", questionText: "Who Is The Current President Of France?" , choiceA: "Emmanuel Macron"  , choiceB: "Angela Merkel", choiceC: "Sanna Marin", choiceD: "Volodmyr Zelensky", answer: 1))
    }
    
}
