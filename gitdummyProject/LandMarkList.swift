//
//  LandMarkList.swift
//  gitdummyProject
//
//  Created by shashivendra  on 14/11/21.
//

import SwiftUI

struct DataList {
    var id = UUID()
    var name: String
    var image:String
    var Subtitle: String
}

struct LandMarkList: View {
    var data = [DataList(name: "charleyrivers", image: "charleyrivers", Subtitle: "1"),DataList.init(name: "umbagog", image: "umbagog", Subtitle: "2"),DataList.init(name: "twinlake", image: "twinlake", Subtitle: "3"),
                DataList(name: "silversalmoncreek", image: "silversalmoncreek", Subtitle: "4"),DataList.init(name: "stmarylake", image: "stmarylake", Subtitle: "5"),DataList.init(name: "turtlerock", image: "turtlerock", Subtitle: "6"),
                DataList(name: "chilkoottrail", image: "chilkoottrail", Subtitle: "7"),DataList.init(name: "chincoteague", image: "chincoteague", Subtitle: "8"),DataList.init(name: "hiddenlake", image: "hiddenlake", Subtitle: "9"),
                            DataList(name: "icybay", image: "icybay", Subtitle: "9"),DataList.init(name: "lakemcdonald", image: "lakemcdonald", Subtitle: "10"),DataList.init(name: "rainbowlake", image: "rainbowlake", Subtitle: "11"),]
    var body: some View {
        
        NavigationView{
        VStack {
            List {
                ForEach(data,id: \.id) { list in
                    
                    HStack {
                        Image(list.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .shadow(radius: 7)
                           .shadow(color: .white, radius: 4)
                        
                        
                        
                    VStack (alignment: .leading){
                    Text(list.name)
                    Text(list.Subtitle)
                    } // end vstack
                        
                    } // end h stack

                }
                .navigationBarHidden(true)
            } // end vstack
            
        }
            
      //  Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
