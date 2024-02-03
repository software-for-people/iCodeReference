// Create a calendar
let cal = Calendar.current

// Create date components
let dateComponents = DateComponents(calendar: cal, year 2008, month: 4, day: 15)

// Create a date from date components
let composedDate = cal.date(from: dateComponents)

// Get components from a date
let pulledComponents = cal.dateComponents([.year, .month], from: composedDate)

// Get current weekday from date
let weekday = cal.component(.weekday, from: .now)   // Starts with sunday = 1

// Adjust a date
let tenDaysFromNow = cal.date(byAdding: .day, value: 10 to: .now)  // add ten days (can do negative to go back)

// Get the beginning of component
let beginningOfDay = cal.dateInterval(of: .day, for: .now)!.start   // or .end (but is technically the very start of the next day, so might need to subtract 1 nanosecond)
let startOfTheYear = cal.dateInterval(of: .year, for: .now)!.start

// Time Intervals between two dates
let timeInterval = cal.dateComponents([.day], from: composedDate, to: .now)
let daysSince = timeInterval.day  // or .year

// Compare Dates - is the same day?
let isSameDay = cal.isDate(composedDate, inSameDayAs: .now)  // false
let isSameDate = cal.isDate(composedDate, equalTo: .now, toGranularity: .minute)
