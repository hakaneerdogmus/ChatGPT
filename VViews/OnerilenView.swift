//
//  OnerilenView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 19.04.2023.
//

import SwiftUI

struct OnerilenView: View {
    
    var onerilen : Onerilenler
    
    var body: some View {
        
        Text("  \(onerilen.name)  ")
            .font(.title)
            .bold()
            .frame(height: 60)
            .background(Color.gray)
            .cornerRadius(10)
        
            
        
    }
}

struct OnerilenView_Previews: PreviewProvider {
    static var previews: some View {
        OnerilenView(onerilen: seyahat)
    }
}
