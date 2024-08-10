//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by 陳冠甫 on 2024/8/7.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("🍿 Appetizers")
        }
        .onAppear {
            viewModel.getApptizers()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
