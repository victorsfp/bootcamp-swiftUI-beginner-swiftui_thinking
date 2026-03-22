//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 22/03/26.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
            //.onDelete(perform: delete)
            .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                Button("Archive") {
                    
                }
                .tint(.green)
                Button("Save") {
                    
                }
                .tint(.blue)
                Button("Junk") {
                    
                }
                .tint(.black)
            }
            .swipeActions(edge: .leading, allowsFullSwipe: true) {
                Button("Share") {
                    
                }
                .tint(.yellow)
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
