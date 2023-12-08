//
//  UserStatView.swift
//  InstagramTutorial
//
//  Created by Samar Chandra on 06/12/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    UserStatView(value: 12, title: "Posts")
}
