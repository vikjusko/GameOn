//
//  ContentView.swift
//  GameOn
//
//  Created by Victoria Jusko on 09/11/2020.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @EnvironmentObject var data: DataModel
    var body: some View {
        HStack {
          ARUIView()
            if data.enableAR {ARDisplayView()}
            else {Spacer()}
        }
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
