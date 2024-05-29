//
//  JournalListView.swift
//  SwiftUI_JNRL
//
//  Created by wonyoul heo on 5/29/24.
//

import SwiftUI

struct JournalListView: View {
    @State private var isShowAddJournalView = false
    
    var body: some View {
        NavigationStack{
            List {
                
            }
            .navigationTitle("Journal List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add", systemImage: "plus") {
                        isShowAddJournalView = true
                    }
                }
            }
            .sheet(isPresented: $isShowAddJournalView) {
                AddJournalEntryView()
            }
        }
    }
}

#Preview {
    JournalListView()
}
