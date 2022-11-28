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
                
            // 1 forma
            //LoadingView()
            
            // 2. forma
            //self.loading

            // 3. forma
            self.loadingView(logo: "aot")
            
        case .goToSignInScreen:
            Text("tela de sigIn...")
        case .goToHomeScreen:
            Text("tela de Home...")
        case .error(let msg):
            Text("mensagem de erro: \(msg)...")
        }
    }
}

// 1. compartilhamento de objetos
struct LoadingView: View {
    var body: some View {
        ZStack {
            Image("aot")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.black)
                .ignoresSafeArea()
                
        }
    }
}

// 2. extendendo a view e desenhandoa  tela.
extension SplashView {
    var loading: some View {
        ZStack {
            Image("aot")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.black)
                .ignoresSafeArea()
                
        }
    }
}

extension SplashView {
    // suporta parametros.
    func loadingView(logo: String) -> some View {
        ZStack {
            Image(logo)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.black)
                .ignoresSafeArea()
                
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .loading)
    }
}
