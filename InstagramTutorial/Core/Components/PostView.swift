//
//  PostView.swift
//  InstagramTutorial
//
//  Created by Samar Chandra on 07/12/23.
//

import SwiftUI

struct PostView: View {
    let postImage: String
    var body: some View {
        VStack{
            HStack{
                Image("Saitama")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 4){
                    Text("_i.samar")
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Anirudh Ravichander . Lokiverse")
                        .font(.footnote)
                }
                Spacer()
                Image("three.dots")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .padding(.horizontal)
            Image("\(postImage)")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.horizontal)
            VStack{
                HStack{
                    Image("Saitama")
                        .resizable()
                        .frame(width: 20, height: 20)
                    .clipShape(Circle())
                    Text("Liked by **_saitama** and **69 others**")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("**_i.samar** Bloody Sweet")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("View all 2 comments")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                HStack {
                    Text("**_kakarrot**")
                        .font(.footnote)
                    Image(systemName: "flame")
                    Image(systemName: "flame")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    PostView(postImage: "postSaitama")
}
