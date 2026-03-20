//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 20/03/26.
//

import SwiftUI
internal import Combine

// ObservedeObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone","iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // BACKGROUND
            Color.orange.ignoresSafeArea()
            
            // Foreground
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }

        }
    }
    
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // BACKGROUND
            LinearGradient(
                colors: [.blue, .black],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            // FOREGROUND
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
    
}

#Preview {
    EnvironmentObjectBootcamp()
//    DetailView(selectedItem: "iPhone")
//    FinalView()
}
