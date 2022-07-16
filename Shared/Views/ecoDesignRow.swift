//
//  ecoDesignRow.swift
//  ecoDesigner
//
//  Created by Jeremy Pagerit on 26/06/2022.
//

import SwiftUI

struct ecoDesignRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct ecoDesignRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group{
            ecoDesignRow(landmark: landmarks[1])
            ecoDesignRow(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
