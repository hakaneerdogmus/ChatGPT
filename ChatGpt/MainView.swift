//
//  ContentView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 16.04.2023.
//

import SwiftUI

struct MainView: View {
    
    @State var textController = ""
    
    var body: some View {
        NavigationView{
            VStack {
                TopBarView()
                    .background(Color.black)
                    .frame(height: UIScreen.main.bounds.height * 0.19)
                    .edgesIgnoringSafeArea(.top)
                Spacer()
                MyScrollView(onerilenler: egitim)
                    .frame(height: UIScreen.main.bounds.height * 0.6)
                    .foregroundColor(.white)
                NavigationLink(destination: ContentView(vm: ViewModel(api: ChatGPTAPI(apiKey: "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"))),
                               label: {
                    ZStack{
                        TextField("Sohbete başlayın" , text: self.$textController)
                        
                            .font(.title)
                            
                            .frame(height: 80)
                            .background(Color.orange)
                            .cornerRadius(40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth:3)
                            )
                            .offset(y:UIScreen.main.bounds.height * -0.001)
                    }
                })
                
            }.background(Color.black)
            
        }.background(Color.black)
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
