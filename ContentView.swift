//
//  ContentView.swift
//  colorPickerWithObservedObj
//
//  Created by Abdullah Alnutayfi on 25/11/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var delegate = obse()
    var body: some View {
        VStack{
        Circle()
            .frame(width: 200, height: 200, alignment: .center)
            .foregroundColor(Color(red: delegate.red/255 , green: delegate.green/255, blue: delegate.blue/255))
       
        Slider(value: $delegate.red, in: 0...255, step: 1)
            Text("Red:\(Int(delegate.red))")
            Slider(value: $delegate.green, in: 0...255, step: 1)
                Text("Green:\(Int(delegate.green))")
            Slider(value: $delegate.blue, in: 0...255, step: 1)
                Text("Blue:\(Int(delegate.blue))")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class obse : ObservableObject{
    @Published  var red: Double = 0
    @Published  var green: Double = 0
    @Published  var blue: Double = 0
}
