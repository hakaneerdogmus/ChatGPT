//
//  DetayFour.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 1.05.2023.
//

import SwiftUI

struct DetayFour: View {
    var onerilen : Onerilenler
    
    var body: some View {
        VStack{
            Text(onerilen.four)
                .font(.title3)
                .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
        }
    }
}

struct DetayFour_Previews: PreviewProvider {
    static var previews: some View {
        DetayFour(onerilen: eglence)
    }
}
