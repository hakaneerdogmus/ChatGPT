//
//  DetayFive.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 1.05.2023.
//

import SwiftUI

struct DetayFive: View {
    var onerilen : Onerilenler
    
    var body: some View {
        VStack{
             if (onerilen.five != ""){
                Text(onerilen.five)
                    .font(.title3)
                    .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
            }else{
                Text( "")
                
            }
        }
    }
}

struct DetayFive_Previews: PreviewProvider {
    static var previews: some View {
        DetayFive(onerilen: eglence)
    }
}
