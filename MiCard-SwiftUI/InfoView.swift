//
//  InfoView.swift
//  MiCard-SwiftUI
//
//  Created by Mark Arias on 9/12/23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 50, height: 50))
            .foregroundColor(.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "text", imageName: "cloud")
            .previewLayout(.sizeThatFits)
    }
}
