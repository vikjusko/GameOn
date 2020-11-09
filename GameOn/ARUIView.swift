//
//  ARUIView.swift
//  GameOn
//
//  Created by Louis Kirkham on 09/11/2020.
//

import SwiftUI

struct ARUIView: View {
    @EnvironmentObject var data: DataModel
    var body: some View {
        List {
            Toggle(isOn: $data.enableAR) {
                Text("AR")
            }
            Stepper("X: \(Int(data.xTranslation))", value: $data.xTranslation, in: -100...100)
            Stepper("Y: \(Int(data.yTranslation))", value: $data.yTranslation, in: -100...100)
            Stepper("Z: \(Int(data.zTranslation))", value: $data.zTranslation, in: -100...100)
        }
    }
}

struct ARUIView_Previews: PreviewProvider {
    static var previews: some View {
        ARUIView()
    }
}
