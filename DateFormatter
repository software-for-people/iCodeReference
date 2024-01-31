import SwiftUI

struct DateExample: View {
  var currentDate = Date()

  var df: DateFormatter {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE, MM dd, h:mm a"
    return formatter
  }

  var body: some View {
    VStack {
      Text(df.string(from: currentDate))
    }
  }
}
