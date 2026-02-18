//
//  PickerBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 18/02/26.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(.segmented)
//        .background(Color.red)
        
//        Picker(selection: $selection) {
//            ForEach(filterOptions, id: \.self) { option in
//                HStack {
//                    Text(option)
//                    Image(systemName: "heart.fill")
//                }
//                .tag(option)
//            }
//        } label: {
//            HStack{
//                Text("Filter:")
//                Text(selection)
//            }
//            .font(.headline)
//            .foregroundStyle(.white)
//            .padding()
//            .padding(.horizontal)
//            .background(Color.blue)
//            .cornerRadius(10)
//            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//            
//        }
//        .pickerStyle(.menu)

        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)").tag("\(number)")
//                            .font(.headline)
//                            .foregroundStyle(Color.red)
//                    }
//                } label: {
//                    Text("Picker")
//                }
//                .pickerStyle(.wheel)
//                //.background(Color.gray.opacity(0.3))
//        }

    }
}

#Preview {
    PickerBootcamp()
}
