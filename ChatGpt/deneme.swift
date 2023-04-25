//
//  deneme.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 22.04.2023.
//

import SwiftUI

struct deneme: View {
    
    @State var textController: String = ""
    
    var body: some View {
        
            ZStack{
                VStack{
                    HStack{
                        Text("Uygulama İsmi")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {},
                               label: {Image(systemName: "clock.arrow.circlepath")
                                .font(.title)
                        }).offset(x:-15)
                        Button(action: {},
                               label: {Image(systemName: "gearshape.fill")
                                .font(.title)
                        })
                    }
                    .frame(height: UIScreen.main.bounds.height * 0.3)
                    .padding()
                    .background(Color.red)
                    .offset(y: UIScreen.main.bounds.height * -0.43)
                }
                
                
                ScrollView{
                    HStack{
                        Text("Öneriler")
                            .foregroundColor(.black)
                            .font(.title)
                            .bold()
                        Spacer()
                    }
                    .padding()
                }
                .background(Color.orange)
                .frame(height: UIScreen.main.bounds.height * 0.8)
                .offset(y: UIScreen.main.bounds.height * 0.01)
                
                
                HStack{
                    TextField("Enter a message", text: $textController){
                        
                    }
                    .padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(12)
                    Button(action: {
                        
                    }, label: {
                        Text("Send")
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(12)
                    })
                }
                .padding()
                .background(.white)
                .offset(y: UIScreen.main.bounds.height * 0.42)
                
                
            }
            .background(Color.accentColor)
        }
    }



struct deneme_Previews: PreviewProvider {
    static var previews: some View {
        deneme()
    }
}
