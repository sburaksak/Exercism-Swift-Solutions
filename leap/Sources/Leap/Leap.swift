//Solution goes in Sources

class Year {
    var isLeapYear: Bool = false
    
    init(calendarYear: Int){
        if (calendarYear % 400 == 0) {
            isLeapYear = true      
        } else if (calendarYear % 4 == 0 && calendarYear % 100 != 0){
            isLeapYear = true      
        }
    }
}