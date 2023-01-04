//
//  SplashView.swift
//  Projeto HabitPlus
//
//  Created by Celso Lima on 28/11/22.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashViewUIState = .loading
    @State var showAlert: Bool = false
    
    var body: some View {
        switch state {
        case .loading:

            // 1 forma
            //LoadingView()
            
            // 2. forma
            //self.loading

            // 3. forma
            self.loadingView(error: "aot")
            
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
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("aot")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.black)
                .ignoresSafeArea()

            if error != nil {
                Text("").alert(isPresented: .constant(true)) {
                    Alert(title: Text("AOT Error"), message: Text("deu ruim essa merda!!"), dismissButton: .default(Text("OK")) {
                        // acação quando aperta o botao
                        print("teste!!!!")
                        
                    })
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state: .loading)
        SplashView(state: .error("problema no servidor!"))
    }
}
