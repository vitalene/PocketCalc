//  Calculator.m
//  PocketCalc

#import "Calculator.h"

@implementation Calculator


- (instancetype)init
{
    self = [super init];
    if (self) {
        _number1 = INT_MAX;
        _number2 = INT_MAX;
        _operation = @"default";
        
    }
    return self;
}


-(void)setOperation:(NSString *)operation {
    _operation = operation;
}
-(void)clear {

    _number1 = INT_MAX;
    _number2 = INT_MAX;
    _operation = @"default";

};


@end
