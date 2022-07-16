//
//  LandmarkDetail.swift
//  ecoDesigner
//
//  Created by Jeremy Pagerit on 26/06/2022.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            urlView()
               .ignoresSafeArea(edges: .top)
               .frame(height: 300)

            circleImage(image: landmark.image)
               .offset(y: 0)
               .padding(.bottom, -130)

           VStack(alignment: .leading) {
               
               HStack {
                   Text(landmark.name)
                       .font(.title)
                   FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                       
                   
               }

               HStack {
                   Text(landmark.park)
                   Spacer()
                   Text(landmark.state)
               }
               .font(.subheadline)
               .foregroundColor(.secondary)

               Divider()

               Text("About \(landmark.name)")
                   .font(.title2)
               Text(landmark.description)
           }
           .padding()
           .offset(y: 100)

           .navigationTitle(landmark.name)
           .navigationBarTitleDisplayMode(.inline)
       }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[1])
                    .environmentObject(modelData)
    }
}
