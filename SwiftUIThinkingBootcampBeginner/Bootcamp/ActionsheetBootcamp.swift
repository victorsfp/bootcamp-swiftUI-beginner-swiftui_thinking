//
//  ActionsheetBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 01/02/26.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.black)

            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            //add code to share post
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            //add code to report this post
        }
        
        let deleteButton: ActionSheet.Button = .cancel(Text("Delete")) {
            //add code to cancel
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
            
//        ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT")) {
//            
//        }
//        
//        let button2: ActionSheet.Button = .default(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel(Text("CANCEL"))
//        
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is the message."),
//            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionsheetBootcamp()
}
