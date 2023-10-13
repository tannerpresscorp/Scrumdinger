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
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
