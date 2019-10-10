//
//  ContentView.swift
//  HowToUsePicker
//
//  Created by ramil on 10.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    let socialMedia = ["Instagram", "Facebook", "Twitter", "Snapchat", "LinkedIn", "YouTube"]
    
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("My Media")) {
                ForEach(0 ..< socialMedia.count) { index in
                    Text(self.socialMedia[index]).tag(index)
                }
            }
        Text("Selected social media: \(socialMedia[selected])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
