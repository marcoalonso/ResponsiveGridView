//
//  NumberDetail.swift
//  ResponsiveGridViewSwiftUI
//
//  Created by Marco Alonso Rodriguez on 09/06/23.
//

import SwiftUI

struct NumberDetail: View {
    var body: some View {
        VStack {
            Text("Number Detail")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(12)
                .background(
                    Color.purple
                )
                .cornerRadius(12)
                .padding(.top, 60)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct NumberDetail_Previews: PreviewProvider {
    static var previews: some View {
        NumberDetail()
    }
}
