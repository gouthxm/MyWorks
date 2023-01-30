//
//  LandmarkRowswift.swift
//  SwiftUIBasics
//
//  Created by Goutham Raj N on 07/09/22.
//

import SwiftUI

struct LandmarkRowswift: View {
    var landmark: Landmark
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LandmarkRowswift_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRowswift(landmark: landmarks[0])
    }
}
