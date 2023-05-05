//
//  DtayThree.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 1.05.2023.
//

import SwiftUI

struct DetayThree: View {
    var onerilen : Onerilenler
    
    var body: some View {
        VStack{
            Text(onerilen.three)
                .font(.title3)
                .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
        }
    }
}

struct DtayThree_Previews: PreviewProvider {
    static var previews: some View {
        DetayThree(onerilen: eglence)
    }
}
