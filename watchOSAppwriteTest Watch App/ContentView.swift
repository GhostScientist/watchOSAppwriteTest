//
//  ContentView.swift
//  watchOSAppwriteTest Watch App
//
//  Created by Dakota Kim on 1/24/23.
//

import SwiftUI
import FirebaseCore
import FirebaseDatabase


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button {
                let ref = Database.database().reference()
                let data = ["name": "John Doe", "age": 30] as [String : Any]
                ref.child("users").child("user1").setValue(data)
            } label: {
                Text("Write")
            }
            Button {
                let ref = Database.database().reference()
                ref.child("users/user1").getData(completion:  { error, snapshot in
                    guard error == nil else {
                      print(error!.localizedDescription)
                      return;
                    }
                    if let temp = snapshot {
                        print(temp.value!)
                    }
                    
                  });
            } label: {
                Text("Read")
            }


        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
