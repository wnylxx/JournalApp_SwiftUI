//
//  AddJournalView.swift
//  SwiftUI_JNRL
//
//  Created by wonyoul heo on 5/29/24.
//

import SwiftUI

struct AddJournalEntryView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var isGetLocationOn = false
    @State private var entryTitle = "Test"
    @State private var entryBody = ""
    
    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Rating")) {
                    Rectangle()
                        .foregroundStyle(.cyan)
                }
                Section(header: Text("Location")) {
                    Toggle("Get Location", isOn: $isGetLocationOn)
                }
                Section(header: Text("Title")) {
                    TextField("Enter title", text: $entryTitle)
                }
                Section(header: Text("Body")) {
                    TextEditor(text: $entryBody)
                }
                Section(header: Text("Photo")) {
                    
                }
            }
            .navigationTitle("Add Journal Entry")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        let journalEntry = JournalEntry(rating: 3, entryTitle: entryTitle, entryBody: entryBody, latitude: nil, longitude: nil)
                        modelContext.insert(journalEntry)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddJournalEntryView()
}
