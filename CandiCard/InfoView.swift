//
//  infoView.swift
//  CandiCard
//
//  Created by Candi Chiu on 28.12.21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.white)
            .frame(height: 70, alignment: .top)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(Color.green)
                Text(text).font(.system(size: 20)).foregroundColor(Color("infoColor"))
            })
            .padding()
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "envelope.fill")
          .previewLayout(.sizeThatFits)
    }
}
