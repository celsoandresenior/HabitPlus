//
//  SplashView.swift
//  Projeto HabitPlus
//
//  Created by Celso Lima on 28/11/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashViewUIState = .loading
    
    var body: some View {
        switch state {
        case .loading:
            Text("tela de loading...")
        case .goToSignInScreen:
            Text("tela de sigIn...")
        case .goToHomeScreen:
            Text("tela de Home...")
        case .error(let msg):
            Text("mensagem de erro: \(msg)...")
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .goToHomeScreen)
    }
}
