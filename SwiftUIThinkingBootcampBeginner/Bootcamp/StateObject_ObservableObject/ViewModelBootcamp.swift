//
//  ViewModelBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 18/03/26.
//

import SwiftUI
internal import Combine

struct FruitModel: Identifiable {
    var id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {

    /**
                ObservedObject também é recriado se por algum motivo a view for recriada.
                Caso queiramos persistir os dados mesmo que a View seja recriada devemos usar o StateObject
     */
//   @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    /**
        @StateObject -> USE THIS ON CREATION / INIT
        @ObservedObject -? USE THIS FOR SUBVIEW
            Com o uso do StateObject caso a view seja recriada, a camada da viewModel será persistida
     */
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    /**
            Se for primeiro lugar o aplicativo usar o StateObject, mas caso dor um objeto que estamos passando para uma segunda camada de visualização usar ObservedObject
     */
    
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing:
                NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                })
            )
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
    
}

struct RandomScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
//            Button {
//                presentationMode.wrappedValue.dismiss()
//            } label: {
//                Text("Go Back")
//                    .foregroundStyle(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
            
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }

        }
    }
}

#Preview {
    ViewModelBootcamp()
}
