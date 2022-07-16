//
//  circleImage.swift
//  ecoDesigner
//
//  Created by Jeremy Pagerit on 26/06/2022.
//

import SwiftUI

struct circleImage: View {
    var image: Image

        var body: some View {
            image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage(image: Image("Silver Salmon Creek"))
    }
}
