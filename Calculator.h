//
//  Calculator.h
//  PocketCalc


#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic) NSInteger number1;
@property (nonatomic) NSInteger number2;
@property (nonatomic) NSString* operation;

-(void)clear;

-(void)setOperation:(NSString *)operation;





@end
