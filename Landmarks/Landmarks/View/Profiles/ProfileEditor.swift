import SwiftUI

struct ProfileEditor: View {
    // MARK: - PROPERTY
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    // MARK: - BODY
    var body: some View {
        List {
            
            //USER NAME -> TEXTFIELD
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            // ENABLE NOTIFICATIONS -> TOGGLE
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            // SEASONAL PHOTO -> PICKER
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            // GOAL DATE -> DATEPICKER
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
            
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ProfileEditor(profile: .constant(.default))
}
