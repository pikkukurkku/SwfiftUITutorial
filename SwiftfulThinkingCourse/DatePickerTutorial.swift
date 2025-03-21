//
//  DatePickerTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct DatePickerTutorial: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from:
                    DateComponents(year: 2018))!
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker(
                "Select a date",
                selection: $selectedDate,
                in: startingDate...endingDate )
            .foregroundColor(Color.red)
            .datePickerStyle(CompactDatePickerStyle())
        }
    }
}

#Preview {
    DatePickerTutorial()
}
