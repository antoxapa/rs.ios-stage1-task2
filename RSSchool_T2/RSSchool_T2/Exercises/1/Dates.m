#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    
    NSString *inputString = [NSString stringWithFormat:@"%@ %@ %@", year,month,day];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"YYYY MM dd"];
    NSDate *date = [formatter dateFromString:inputString];
    
    [formatter setDateFormat:@"dd MMMM, EEEE"];
    [formatter setLocale:[NSLocale localeWithLocaleIdentifier:@"ru-RU"]];
    
    NSString *result = [formatter stringFromDate:date];
    
    if (result == nil) {
        return @"Такого дня не существует";
    }
    return result;
}

@end
