//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by 陳冠甫 on 2024/8/7.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationStack {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("🍿 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
