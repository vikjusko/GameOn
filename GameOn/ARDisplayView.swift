//
//  ARDisplayView.swift
//  GameOn
//
//  Created by Victoria Jusko on 09/11/2020.
//

import SwiftUI
import RealityKit


struct ARDisplayView: View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        return DataModel.shared.arView
    }
        
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ARDisplayView_Previews: PreviewProvider {
    static var previews: some View {
        ARDisplayView()
    }
}
#endif
