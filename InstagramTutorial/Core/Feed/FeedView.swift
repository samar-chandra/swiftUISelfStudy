//
//  FeedView.swift
//  InstagramTutorial
//
//  Created by Samar Chandra on 07/12/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                ScrollView(.horizontal){
                    HStack {
                        ZStack {
                            Image("Saitama")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(LinearGradient(
                                    colors: [.yellow, .red, .purple],
                                    startPoint: .topLeading,
                                endPoint: .bottomTrailing), lineWidth: 3))
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.blue)
                                .overlay(Circle().stroke(Color.white ,lineWidth: 2))
                                .offset(CGSize(width: 20, height: 20))
                            
                        }
                            
                        ForEach(1 ... 10, id: \.self){
                            index in
                            Image("postSaitama")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(LinearGradient(
                                    colors: [.yellow, .red, .purple],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing), lineWidth: 3))

                        }
                    }
                    .padding()
                }
                ForEach(1 ... 10, id: \.self){
                    index in
                    PostView(postImage: "image-\(index)")
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    HStack {
                        Image("instaLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Image(systemName: "heart")
                        Image(systemName: "paperplane")
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
