//
//  DatePickerBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 18/02/26.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            //        DatePicker("Select a Date", selection: $selectedDate)
            //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                        .accentColor(.red)
            //            .datePickerStyle(.graphical)
                        .datePickerStyle(.compact)
            //            .datePickerStyle(.wheel)
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
