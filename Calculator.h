//
//  Calculator.h
//  PocketCalc


#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic) NSInteger number1;
@property (nonatomic) NSInteger number2;

-(NSInteger)addition:(NSInteger)number1
                 with:(NSInteger)number2;
-(NSInteger)subtraction:(NSInteger)number1
                    with:(NSInteger)number2;
-(NSInteger)division:(NSInteger)number1
                 with:(NSInteger)number2;
-(NSInteger)multiplication:(NSInteger)number1
                       with:(NSInteger)number2;
-(void)clear:(BOOL)clear;

-(instancetype)initWithNumbers:(NSInteger)number1
                       with:(NSInteger)number2 NS_DESIGNATED_INITIALIZER;




@end
