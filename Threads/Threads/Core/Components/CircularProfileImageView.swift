//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Victor Chang on 23/04/2024.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("lewis-hamilton")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
