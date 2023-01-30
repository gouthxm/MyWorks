//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Goutham Raj N on 06/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

        ContentView()
            .environmentObject(ModelData())
    }
}
