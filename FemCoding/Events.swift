import SwiftUI

struct Events: View {
    @State private var selectedDate = Date()

    private let events: [Date: String] = [
        Calendar.current.date(from: DateComponents(year: 2023, month: 11, day: 8))!: "Speech acerca de la importancia de la igualdad de género en el ámbito laboral",
        Calendar.current.date(from: DateComponents(year: 2023, month: 11, day: 10))!: "Hackaton Online con SwiftUI, con dudración de 24 horas"
    ]

    var body: some View {
        VStack {
            Text("Fecha Seleccionada: \(formattedDate)")
                .padding()

            LazyVGrid(columns: Array(repeating: GridItem(), count: 7), spacing: 5) {
                ForEach(daysInMonth(), id: \.self) { day in
                    Button(action: {
                        selectedDate = day
                    }) {
                        VStack {
                            Text("\(day, formatter: dayFormatter)")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(selectedDate == day ? Color.blue : Color.clear)
                                .cornerRadius(8)
                            if let event = events[day] {
                                Rectangle()
                                    .foregroundColor(Color.green)
                                    .frame(width: 30, height: 10)
                                    .cornerRadius(4)
                                    .padding(.bottom, 4)
                            }
                        }
                    }
                    .disabled(!isDateInThisMonth(day))
                }
            }
            .padding()

            HStack {
                Spacer()
                if let event = events[selectedDate] {
                    MaxRectangles(event: event, date:selectedDate)
                        .padding(.bottom, 4)
                }
            }
            .padding()

            Spacer()
        }
    }
    // Cambiar idioma a espaniol
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "es_ES")
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: selectedDate)
    }

    private func daysInMonth() -> [Date] {
        let calendar = Calendar.current
        let range = calendar.range(of: .day, in: .month, for: selectedDate)!
        let monthStart = calendar.date(from: calendar.dateComponents([.year, .month], from: selectedDate))!
        return (0..<range.count).map { calendar.date(byAdding: .day, value: $0, to: monthStart)! }
    }

    private func isDateInThisMonth(_ date: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(date, equalTo: selectedDate, toGranularity: .month)
    }

    private var dayFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "d"
        return formatter
    }
}

struct MaxRectangles: View {
    let event: String
    let date: Date

    var body: some View {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return Rectangle()
            .foregroundColor(Color.pink.opacity(0.2))
            .frame(width: 400, height: 90)
            .overlay(
                VStack(alignment: .trailing) {
                                    Text(dateFormatter.string(from: date))
                                        .foregroundColor(.black)
                                        .font(.system(size: 12))
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.trailing)
                                   Text(event)
                                       .foregroundColor(.black)
                                       .font(.system(size: 14))
                                       .multilineTextAlignment(.trailing)
                                   
                                    
                               }
                               .padding()
                           )
    }
}

struct Events_Previews: PreviewProvider {
    static var previews: some View {
        Events()
    }
}

