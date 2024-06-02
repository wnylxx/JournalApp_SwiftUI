//
//  RatingView.swift
//  SwiftUI_JNRL
//
//  Created by wonyoul heo on 6/2/24.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                Image(systemName: index < rating ? "star.fill" : "star")
                    .foregroundStyle(.blue)
                    .onTapGesture {
                        rating = index + 1
                    }
            }
        }
    }
}
