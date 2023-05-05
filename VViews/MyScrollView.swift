//
//  ScrollView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 17.04.2023.
//

import SwiftUI

struct MyScrollView: View {
    
    var onerilenler: Onerilenler
    @State var selectedIndex = 0
   
    
    var body: some View {
        
        NavigationView{
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
            }
            .background(Color.black)
        }
    }
    struct ScrollView_Previews: PreviewProvider {
        static var previews: some View {
            MyScrollView(onerilenler: eglence)
        }
    }
}

