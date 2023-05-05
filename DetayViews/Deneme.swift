//
//  Deneme.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 30.04.2023.
//

import SwiftUI

struct Deneme: View {
    @State var textController = ""
    @State var onerilenler: Onerilenler
    @State var selectedIndex = 0
    @State var secilen = ""
   
    var body: some View {
        NavigationView{
            VStack{
                
                //MARK: Tabbar View
                HStack{
                    Text("Uygulama İsmi")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    
                    
                    Button(action: {},
                           label: {Image(systemName: "clock.arrow.circlepath")
                            .font(.title)
                    }).offset(x:-15)
                    Button(action: {},
                           label: {Image(systemName: "gearshape.fill")
                            .font(.title)
                    })
                }.foregroundColor(.white)
                    
               
           
                
                //MARK: Scroll View
                ScrollView{
                    VStack(spacing: 20) {
                        HStack{
                            Text("Öneriler")
                                .font(.title)
                                .bold()
                            Spacer()
                        }
                        
                        
                        //Öneri seçenek horizontal scroll view
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 10){
                                ForEach(onerilenlerDizisi){ index in
                                    Button(action: {
                                        selectedIndex = index.id
                                        
                                    }, label: {OnerilenView(onerilen: index)})
                                }
                            }
                        }
                        
                        //Eğlence
                        if(selectedIndex == 0){
                            NavigationLink(destination: {
                                ChatView(fieldText: "Asytoloji hakkında soru sor", chatMessage: [])
                            }, label: {
                                DetayOne(onerilen: eglence)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Gördüğün rüyayı anlat")
                            }, label: {
                                DetayTwo(onerilen: eglence)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Yazı yaz ve emoji olarak iste")
                            }, label: {
                                DetayThree(onerilen: eglence)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Bir hikaye anlattır")
                            }, label: {
                                DetayFour(onerilen: eglence)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Sevdiğin tarzda şarkı iste")
                            }, label: {
                                DetayFive(onerilen: eglence)
                            })
                            
                        }
                        
                        //Eğitim
                        if(selectedIndex == 1){
                            NavigationLink(destination: {
                                ChatView(fieldText: "Bilim hakkında konuş")
                            }, label: {
                                DetayOne(onerilen: egitim)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "İbgilizce konuş")
                            }, label: {
                                DetayTwo(onerilen: egitim)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "İstediğin dilde çeviri")
                            }, label: {
                                DetayThree(onerilen: egitim)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Çözemediğin problemi yaz")
                            }, label: {
                                DetayFour(onerilen: egitim)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Makale konusu yaz")
                            }, label: {
                                DetayFive(onerilen: egitim)
                            })
                        }
                        
                        //Seyahat
                        if(selectedIndex == 2){
                            NavigationLink(destination: {
                                ChatView(fieldText: "Tatil planlı iste")
                            }, label: {
                                DetayOne(onerilen: seyahat)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Yemek tarifi iste")
                            }, label: {
                                DetayTwo(onerilen: seyahat)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Gezmek için plan yaptır")
                            }, label: {
                                DetayThree(onerilen: seyahat)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Aktivite önerisi iste")
                            }, label: {
                                DetayFour(onerilen: seyahat)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "")
                            }, label: {
                                DetayFive(onerilen: seyahat)
                            })
                        }
                        
                        //Sağlık ve Beslenme
                        if(selectedIndex == 3){
                            NavigationLink(destination: {
                                ChatView(fieldText: "Yaşam koçu tavsiye iste")
                            }, label: {
                                DetayOne(onerilen: saglıkVeBeslenme)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Diyet tavsiyesi iste")
                            }, label: {
                                DetayTwo(onerilen: saglıkVeBeslenme)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Egzersiz programı iste")
                            }, label: {
                                DetayThree(onerilen: saglıkVeBeslenme)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Yoga pozu söyle")
                            }, label: {
                                DetayFour(onerilen: saglıkVeBeslenme)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Vegan yemek hakkında bilgi")
                            }, label: {
                                DetayFive(onerilen: saglıkVeBeslenme)
                            })
                        }
                        
                        //Rol yapma
                        if(selectedIndex == 4){
                            NavigationLink(destination: {
                                ChatView(fieldText: "Film karakteri gibi davranmasını iste")
                            }, label: {
                                DetayOne(onerilen: rolYapma)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "İstediğin yazar gibi hikaye iste")
                            }, label: {
                                DetayTwo(onerilen: rolYapma)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "İstediğin şarkıcı gibi şarkı iste")
                            }, label: {
                                DetayThree(onerilen: rolYapma)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "İstediğin şarkıcı gibi şarkı sözü iste")
                            }, label: {
                                DetayFour(onerilen: rolYapma)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Ünlü iş adamı gibi tavsiye iste")
                            }, label: {
                                DetayFive(onerilen: rolYapma)
                            })
                        }
                        
                        //İş ve Pazarlama
                        if(selectedIndex == 5){
                            NavigationLink(destination: {
                                ChatView(fieldText: "E-Mail yazdır")
                            }, label: {
                                DetayOne(onerilen: isVePazarlama)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Sosyal medya yönetimi tavsiye iste")
                            }, label: {
                                DetayTwo(onerilen: isVePazarlama)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "İş fikri sor")
                            }, label: {
                                DetayThree(onerilen: isVePazarlama)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Dijital pazarlama stratejisi iste")
                            }, label: {
                                DetayFour(onerilen: isVePazarlama)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "")
                            }, label: {
                                DetayFive(onerilen: isVePazarlama)
                            })
                        }
                        
                        //Sosyal
                        if(selectedIndex == 6){
                            NavigationLink(destination: {
                                ChatView(fieldText: "Hediye tavsiyesi iste")
                            }, label: {
                                DetayOne(onerilen: sosyal)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Etkinlik sor")
                            }, label: {
                                DetayTwo(onerilen: sosyal)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Romantik bir söz iste")
                            }, label: {
                                DetayThree(onerilen: sosyal)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "Stil tavsiyesi sor")
                            }, label: {
                                DetayFour(onerilen: sosyal)
                            })
                            
                            NavigationLink(destination: {
                                ChatView(fieldText: "")
                            }, label: {
                                DetayFive(onerilen: sosyal)
                            })
                        }
                        
                    }
                }.background(Color.black)
                    .foregroundColor(.white)
                NavigationLink(destination: ChatView(fieldText: "Sohbete Başla"),
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
                })
            }.padding()
                .background(Color.black)
        }
    }
}

struct Deneme_Previews: PreviewProvider {
    static var previews: some View {
        Deneme(onerilenler: eglence)
    }
}
