//  Calculator.m
//  PocketCalc

#import "Calculator.h"

@implementation Calculator

-(instancetype)initWithNumbers:(NSInteger)number1
                       with:(NSInteger)number2 {
    self = [super init];
    if (self) {
        _number1 = number1;
        _number2 = number2;
    }
    return self;
}
-(instancetype)init {
    return [self initWithNumbers:0 with:0];
}
-(NSInteger)addition:(NSInteger)number1
                 with:(NSInteger)number2 {
    NSInteger number3;
    number3 = number1 + number2;
    return number3;
};
-(NSInteger)subtraction:(NSInteger)number1
                    with:(NSInteger)number2 {
    NSInteger number3 = number1 - number2;
    return number3;
};
-(NSInteger)division:(NSInteger)number1
                 with:(NSInteger)number2 {
    NSInteger number3 = number1 / number2;
    return number3;
};
-(NSInteger)multiplication:(NSInteger)number1
                       with:(NSInteger)number2 {
    NSInteger number3 = number1 * number2;
    return number3;
};
-(void)clear:(BOOL)clear{
};

@end
