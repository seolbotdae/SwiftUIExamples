//
//  ContentViewModel.swift
//  ObservableObjectExample
//
//  Created by Seol WooHyeok on 6/3/24.
//

import Foundation

//ViewMdoel
class ContentViewModel: ObservableObject {
    @Published var seogun  = Person(name: "서근", birthday: Date())
    
    var name: String {
        seogun.name
    }
    var age: String {
        
        //Date를 -> 나이로 변환
        return "27"
    }
    //이름변경 함수 생성
    func changeName(_ name: String) {
        seogun.name = name
    }
}
