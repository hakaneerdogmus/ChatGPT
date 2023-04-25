//
//  DetayOnerilenView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 20.04.2023.
//

import SwiftUI

struct DetayOnerilenView: View {
    
    var onerilen : Onerilenler
     
    var body: some View {
        VStack{
            Text(onerilen.one)
                .font(.title3)
                .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            Text(onerilen.two)
                .font(.title3)
                .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            Text(onerilen.three)
                .font(.title3)
                .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            Text(onerilen.four)
                .font(.title3)
                .frame(width: UIScreen.main.bounds.width * 0.9,height: 60)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
           
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
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.black)
        
    }
}

struct DetayOnerilenView_Previews: PreviewProvider {
    static var previews: some View {
        DetayOnerilenView(onerilen: egitim)
    }
}
