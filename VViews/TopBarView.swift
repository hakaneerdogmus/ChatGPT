//
//  TopBarView.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 16.04.2023.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        
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
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
