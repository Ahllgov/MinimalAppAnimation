//
//  Home.swift
//  MinimalAppAnimation
//
//  Created by Akhilgov Magomed Abdulmazhitovich on 12.08.2022.
//

import SwiftUI

struct Home: View {
    @State var animatedStates: [Bool] = Array(repeating: false, count: 3)
    @Namespace var animation
    
    var body: some View {
        ZStack {
            
            if !animatedStates[1] {
                RoundedRectangle(cornerRadius: animatedStates[0] ? 30 : 0, style: .continuous)
                    .fill(.indigo)
                    .matchedGeometryEffect(id: "DATEVIEW", in: animation)
                    .ignoresSafeArea()
            }
            
            if animatedStates[0] {
                VStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(.indigo)
                        .matchedGeometryEffect(id: "DATEVIEW", in: animation)
                        .frame(height: 290)
                }
                .padding([.horizontal, .top])
            }
        }
        .onAppear(perform: smartAnimations)
    }
    
    func smartAnimations() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.7, blendDuration: 0.7)) {
                animatedStates[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                animatedStates[1] = true
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
