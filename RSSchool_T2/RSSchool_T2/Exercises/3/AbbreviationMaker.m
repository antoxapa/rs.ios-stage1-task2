#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    NSString *inputString = [a uppercaseString];
    NSMutableString *resultString = [NSMutableString string];
    
    for (int j = 0; j < b.length;j++){
        NSString *symbolB = [b substringWithRange:NSMakeRange(j, 1)];
        for (int i = j; i<a.length;i++) {
            NSString *symbolA = [inputString substringWithRange:NSMakeRange(i, 1)];
            if ([symbolA isEqualToString:symbolB]) {
                [resultString appendString:symbolA];
            }
        }
    }
    
    if ([resultString isEqualToString:b]) {
        return @"YES";
    }
    return @"NO";
}
@end
