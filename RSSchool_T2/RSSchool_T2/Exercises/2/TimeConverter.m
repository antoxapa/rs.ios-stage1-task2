#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    
    if (hours.intValue > 12 || hours.intValue < 0) {
        return @"";
    }
    if (minutes.intValue >60 || minutes.intValue < 0) {
        return @"";
    }
    
    NSArray *words = @[@"zero", @"one", @"two", @"three", @"four",
                       @"five", @"six", @"seven", @"eight", @"nine",
                       @"ten", @"eleven", @"twelve", @"thirteen",
                       @"fourteen", @"fifteen", @"sixteen", @"seventeen",
                       @"eighteen", @"nineteen", @"twenty", @"twenty one",
                       @"twenty two", @"twenty three", @"twenty four",
                       @"twenty five", @"twenty six", @"twenty seven",
                       @"twenty eight", @"twenty nine", @"thirty"];
    
    NSMutableString *stringMinutes = [NSMutableString string];
    NSMutableString *stringHours = [NSMutableString string];
    
    
    
    if (minutes.intValue <= 30) {
        int firstHalfHour = minutes.intValue;
        stringMinutes = [words objectAtIndex:firstHalfHour];
        stringHours = [words objectAtIndex:hours.intValue];
        
        if (minutes.intValue == 0 || minutes.intValue == 00) {
            return [NSString stringWithFormat:@"%@ o' clock",stringHours];
        } else if (minutes.intValue == 1) {
            return [NSString stringWithFormat:@"%@ minute past %@",stringMinutes,stringHours];
        } else if (minutes.intValue > 1 && minutes.intValue <30) {
            if (minutes.intValue == 15) {
                return [NSString stringWithFormat:@"quarter past %@",stringHours];
            }
            return [NSString stringWithFormat:@"%@ minutes past %@",stringMinutes,stringHours];
        } else if (minutes.intValue == 30) {
            return [NSString stringWithFormat:@"half past %@",stringHours];
        }
    } else {
        int secondHalfHour = 60 - minutes.intValue;
        stringMinutes = [words objectAtIndex:secondHalfHour];
        stringHours = [words objectAtIndex:(hours.intValue + 1)];
        
        if (secondHalfHour > 1 && secondHalfHour <30) {
            if (secondHalfHour == 15) {
                return [NSString stringWithFormat:@"quarter to %@",stringHours];
            }
            return [NSString stringWithFormat:@"%@ minutes to %@",stringMinutes,stringHours];
        } else if (secondHalfHour == 30) {
            return [NSString stringWithFormat:@"half to %@",stringHours];
        }
    }
    return @"";
}
@end
