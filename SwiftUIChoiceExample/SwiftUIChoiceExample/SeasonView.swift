//
// [swiftui-choice](https://github.com/ralfebert/swiftui-choice) is licensed under the MIT License
// © 2021 Ralf Ebert
//

import SwiftUI

struct SeasonView: View {
    @State var selectedSeason = Season.spring

    var body: some View {
        Form {
            Section(header: Text("Picker")) {
                Picker("Season", selection: $selectedSeason) {
                    ForEach(Season.allCases, id: \.self) { season in
                        Text(season.localizedTitle).tag(season)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }

            Section(header: Text("List")) {
                List(Season.allCases, id: \.self) { season in
                    HStack {
                        Button(season.localizedTitle) {
                            self.selectedSeason = season
                        }
                        Spacer()
                        if season == self.selectedSeason {
                            Image(systemName: "checkmark.circle.fill")
                        }
                    }
                }
            }

            Section(header: Text("Menu")) {
                Menu(
                    content: {
                        ForEach(Season.allCases, id: \.self) { season in
                            Button(season.localizedTitle) {
                                self.selectedSeason = season
                            }
                        }

                    },
                    label: {
                        HStack {
                            Text(self.selectedSeason.localizedTitle)
                            Spacer()
                        }
                    }
                )
                .accentColor(Color(UIColor.label))
            }
        }
    }
}

struct SeasonView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonView()
    }
}
