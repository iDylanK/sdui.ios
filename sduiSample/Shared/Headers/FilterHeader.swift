//
//  FilterHeader.swift
//  sdui (iOS)
//
//  Created by Dylan on 17/06/2022.
//

import SwiftUI
import SDUI

struct FilterHeader: View {
    @EnvironmentObject var state: SDUIState
    @EnvironmentObject var sduiData: SDUIData

    @State var showFilters = false

    let header: SDUIFilterHeader

    func updateFilters() {
        if sduiData.filters.allSatisfy({ filter in
            filter.value != true
        }) { state.resetFilters() } else {
            state.resetFilters()
        }
    }

    var body: some View {
        VStack {
            Button {
                showFilters = true
            } label: {
                Text("Filter")
                    .frame(width: 200, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(25)
                .contentShape(Rectangle())
        }
        .sheet(isPresented: self.$showFilters) {
            VStack {
                Text("Filters").bold()

                if let drink = SDUIProductCategory(rawValue: "DRINK") {
                    Toggle("Drankjes", isOn: self.sduiData.filterBinding(for: drink))
                }

                if let food = SDUIProductCategory(rawValue: "FOOD") {
                    Toggle("Eten", isOn: self.sduiData.filterBinding(for: food))
                }

                Spacer()
                Button {
                    self.showFilters = false
                } label: {
                    Text("Sluit")
                }
            }
            .padding()
            .onChange(of: self.sduiData.filters) { _ in
                self.updateFilters()
            }
            .onAppear {
                self.sduiData.resetFilters()
            }
        }
    }
}
