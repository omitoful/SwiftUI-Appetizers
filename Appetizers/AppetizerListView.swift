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
                HStack {
                    Image("")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .background(.brandPrimary)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                    VStack(alignment: .leading, spacing: 10) {
                        Text(appetizer.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .foregroundStyle(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading)
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍿 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
