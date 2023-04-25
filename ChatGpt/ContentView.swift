//
//  ContentView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 16.04.2023.
//

import SwiftUI

struct ContentView: View {
    
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
                NavigationLink(destination: ChatView(),
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
