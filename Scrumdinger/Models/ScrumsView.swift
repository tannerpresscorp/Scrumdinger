//
//  ScrumsView.swift
//  Mattdinger
//
//  Created by Matthew Tanner on 10/13/23.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
  
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
