//
//  ContentView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 28.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var textController = ""
    
    var onerilenler: Onerilenler
    @State var selectedIndex = 0
    
    
    
    var body: some View {
        NavigationView{
            VStack {
                
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
                .padding()
                .background(Color.black)
                
                
               // TopBarView()
               //     .background(Color.black)
               //     .frame(height: UIScreen.main.bounds.height * 0.19)
               //     .edgesIgnoringSafeArea(.top)
               //     .offset(y: 40)
                
                
                Spacer()
                
                
                ScrollView {
                    VStack(spacing: 20) {
                        HStack{
                            Text("Öneriler")
                                .foregroundColor(.white)
                                .font(.title)
                                .bold()
                            Spacer()
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 10){
                                ForEach(onerilenlerDizisi){ index in
                                    Button(action: {
                                        selectedIndex = index.id
                                    }, label: {OnerilenView(onerilen: index)})
                                }
                            }
                        }
                        
                      
                        
                        if(selectedIndex == 0){
                            
                            NavigationLink(destination: {
                                
                                ChatView(fieldText: "selam")
                            }, label: {
                                DetayOnerilenView(onerilen: eglence)
                            })
                        }
                        else if(selectedIndex == 1){
                            NavigationLink(destination: {
                                ChatView()
                            }, label: {
                                DetayOnerilenView(onerilen: egitim)
                            })
                        }
                        else if(selectedIndex == 2){
                            NavigationLink(destination: {
                                ChatView()
                            }, label: {
                                DetayOnerilenView(onerilen: seyahat)
                            })
                        }
                        else if(selectedIndex == 3){
                            NavigationLink(destination: {
                                ChatView()
                            }, label: {
                                DetayOnerilenView(onerilen: saglıkVeBeslenme)
                            })
                        }
                        else if(selectedIndex == 4){
                            NavigationLink(destination: {
                                ChatView()
                            }, label: {
                                DetayOnerilenView(onerilen: rolYapma)
                            })
                        }
                        else if(selectedIndex == 5){
                            NavigationLink(destination: {
                                ChatView()
                            }, label: {
                                DetayOnerilenView(onerilen: isVePazarlama)
                            })
                        }
                        else if(selectedIndex == 6){
                            NavigationLink(destination: {
                                ChatView()
                            }, label: {
                                DetayOnerilenView(onerilen: sosyal)
                            })
                        }
                    }
                    
                    
                    
                    
                    
                    
                    
                    // MyScrollView(onerilenler: eglence)
                    //     .frame(height: UIScreen.main.bounds.height * 0.85)
                    //     .foregroundColor(.white)
                    //     .offset(y: -25)
                    
                    
                    
                    
                    NavigationLink(destination: ChatView(),
                                   label: {
                        ZStack{
                            TextField("Sohbete başlayın" , text: self.$textController)
                                .font(.title)
                                .frame(height: 60)
                                .background(Color.orange)
                                .cornerRadius(40)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black, lineWidth:3)
                                )
                            
                        }
                    }).offset(y: 100)
                    
                }.background(Color.black)
                
                
            }.background(Color.black)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(onerilenler: eglence)
    }
}
