//
//  PageView.swift
//  Landmarks
//
//  Created by Muzahidul on 21/1/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count) * 18)
                .padding(.trailing)
        }
    }
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { landmark in
            FeatureCard(landmark: landmark)
        })
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}
