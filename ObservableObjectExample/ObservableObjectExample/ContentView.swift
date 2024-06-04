//
//  ContentView.swift
//  ObservableObjectExample
//
//  Created by Seol WooHyeok on 5/28/24.
//

import SwiftUI

//Views
struct ContentView: View {
    /// ViewModel을 가져온다
    /// @StateObject 와 @ObservedObject의 차이
    /// StateObject를 통해서 관찰되고 있는 객체는 화면 구조가 재생성되어도 파괴되지 않는다.
    ///
    ///    struct RandomNumberView: View {
    ///        @State var randomNumber = 0
    ///
    ///        var body: some View {
    ///            VStack {
    ///                Text("Random number is: \(randomNumber)")
    ///                Button("Randomize number") {
    ///                    randomNumber = (0..<1000).randomElement()!
    ///                }
    ///            }.padding(.bottom)
    ///
    ///            CounterView()
    ///        }
    ///    }
    ///
    /// 이런 경우에 randomNumber가 변경되면 SwiftUI는 뷰를 새로 그리게 되는데,
    /// 이 과정에서 ObservedObject를 사용한 경우에는 카운터가 계속 새로 그려지게 되면서 초기화된다.
    /// 이를 막기 위해서 StateObject를 사용한다.
    ///
    @StateObject var viewModel = ContentViewModel()
 
    var body: some View {
        
        VStack {
            Text(viewModel.name)
                .padding()
            Text(viewModel.age)
                .padding()
            Button("이름변경") {
                //이름을 "포뇨"로 변경
                viewModel.changeName("포뇨")
            }
        }
    }
}
