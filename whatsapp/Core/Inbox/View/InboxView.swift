//
//  InboxView.swift
//  whatsapp
//
//  Created by choudhary kalash on 05/05/24.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                List {
                    ForEach (1..<5) { _ in
                        Text("Test")
                    }
                }
                .listStyle(PlainListStyle()) 
                Button(action: {}, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(.darkGray))
                        .frame(width: 50, height: 50)
                        .padding()
                        .overlay {
                            Image(systemName: "plus.bubble.fill")
                                .foregroundColor(.white)
                        }
     
                })
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Whatsaap")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .navigationBarColor(backgroundColor: Color(.darkGray))
                        
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 24) {
                        Image(systemName: "camera")
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "ellipsis")
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                }
                
            }
            
        }
    }
}

#Preview {
    InboxView()
}
