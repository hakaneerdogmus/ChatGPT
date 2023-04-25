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
                        DetayOnerilenView(onerilen: eglence)
                    }
                    else if(selectedIndex == 1){
                        DetayOnerilenView(onerilen: egitim)
                    }
                    else if(selectedIndex == 2){
                        DetayOnerilenView(onerilen: seyahat)
                    }
                    else if(selectedIndex == 3){
                        DetayOnerilenView(onerilen: saglıkVeBeslenme )
                    }
                    else if(selectedIndex == 4){
                        DetayOnerilenView(onerilen: rolYapma )
                    }
                    else if(selectedIndex == 5){
                        DetayOnerilenView(onerilen: isVePazarlama)
                    }
                    else if(selectedIndex == 6){
                        DetayOnerilenView(onerilen: sosyal)
                    }
                }.frame(width: UIScreen.main.bounds.width * 0.98)
                    .background(Color.black)
            }
            
            .background(Color.red)
        }
    
    
    
    struct ScrollView_Previews: PreviewProvider {
        static var previews: some View {
            MyScrollView(onerilenler: eglence)
        }
    }
}
