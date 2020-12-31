//
//  ContentView.swift
//  cw4
//
//  Created by Mac on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [String] = ["0","0","0"]
    var body: some View {
        VStack (alignment:.trailing){
            Thekerbutton(counter: $counter[0], label: " استغفر الله")
            Thekerbutton(counter: $counter[1], label: "سبحان الله و بحمده")
            Thekerbutton(counter: $counter[2], label: "الحمدلله")
        }
    }
}

struct Thekerbutton: View {
    @Binding var counter: String
    let label : String
    var body: some View{
        HStack{
            Text(label)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.counter = String(Int(self.counter)!+1)
            }) {
                Text(counter)
                    .font(.largeTitle)
                
            }.frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
        }
    }
}
