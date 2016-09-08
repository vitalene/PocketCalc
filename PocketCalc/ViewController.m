//
//  ViewController.m
//  PocketCalc
//
//  Created by Neil Vitale on 8/25/16.
//  Copyright © 2016 Neil Vitale. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()
- (IBAction)buttonZero:(id)sender;
- (IBAction)buttonOne:(id)sender;
- (IBAction)buttonTwo:(id)sender;
- (IBAction)buttonThree:(id)sender;
- (IBAction)buttonFour:(id)sender;
- (IBAction)buttonFive:(id)sender;
- (IBAction)buttonSix:(id)sender;
- (IBAction)buttonSeven:(id)sender;
- (IBAction)buttonEight:(id)sender;
-(IBAction)buttonNine:(id)sender;
-(IBAction)plus:(id)sender;
-(IBAction)minus:(id)sender;
-(IBAction)times:(id)sender;
-(IBAction)divide:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)clearAll:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *calculatorDisplay;
@property (strong, nonatomic) IBOutlet UILabel *operationDisplay;
@property (strong, nonatomic) NSArray *calculatorNumbers;
@property (strong, nonatomic) NSArray *calculatorOperators;
@property (nonatomic, strong) Calculator *calculator;
@property (nonatomic, strong) NSMutableArray *calculatorMemory;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.calculator = [[Calculator alloc]init];
    self.calculatorNumbers = @[@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
    self.calculatorOperators = @[@"+",@"-",@"/",@"*"];
    self.calculatorMemory = [NSMutableArray array];
    [self.calculatorDisplay setText:@"0"];
    [self.operationDisplay setText:@""];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonZero:(id)sender {
    NSLog(@"Hello 0!");
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 0;
        self.calculatorDisplay.text = @"0";
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 0;
        self.calculatorDisplay.text = @"0";
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
    
}
- (IBAction)buttonOne:(id)sender {
    NSLog(@"Hello 1!");
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 1;
        self.calculatorDisplay.text = @"1";
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 1;
        self.calculatorDisplay.text = @"1";
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
    
}
- (IBAction)buttonTwo:(id)sender {
    NSLog(@"Hello 2!");
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 2;
        self.calculatorDisplay.text = @"2";
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 2;
        self.calculatorDisplay.text = @"2";
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
}
- (IBAction)buttonThree:(id)sender {
    NSLog(@"Hello 3!");
    
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 3;
        self.calculatorDisplay.text = @"3";
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 3;
        self.calculatorDisplay.text = @"3";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
    
}
- (IBAction)buttonFour:(id)sender {
    NSLog(@"Hello 4!");
    
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 4;
        self.calculatorDisplay.text = @"4";
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 4;
        self.calculatorDisplay.text = @"4";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
}
- (IBAction)buttonFive:(id)sender {
    NSLog(@"Hello 5!");
    
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 5;
        self.calculatorDisplay.text = @"5";
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 5;
        self.calculatorDisplay.text = @"5";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
}
- (IBAction)buttonSix:(id)sender {
    NSLog(@"Hello 6!");
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 6;
        self.calculatorDisplay.text = @"6";
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 6;
        self.calculatorDisplay.text = @"6";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
}
- (IBAction)buttonSeven:(id)sender {
    NSLog(@"Hello 7!");
    
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 7;
        self.calculatorDisplay.text = @"7";
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 7;
        self.calculatorDisplay.text = @"7";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
}
- (IBAction)buttonEight:(id)sender {
    NSLog(@"Hello 8!");
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX) {
        self.calculator.number1 = 8;
        self.calculatorDisplay.text = @"8";
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 8;
        self.calculatorDisplay.text = @"8";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
    NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
    
}
-(IBAction)buttonNine:(id)sender {
    NSLog(@"Hello 9!");
    if (self.calculator.number1 == INT_MAX && self.calculator.number2 == INT_MAX ) {
        self.calculator.number1 = 9;
        self.calculatorDisplay.text = @"9";
        NSLog(@"Number 1 is: %ld.  Number two is %ld", (long)self.calculator.number1, (long)self.calculator.number2);
        
    } else if (self.calculator.number2 == INT_MAX && [self.calculator.operation isEqualToString:@"default"] && self.calculator.number1 != INT_MAX) {
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 == INT_MAX) {
        self.calculator.number2 = 9;
        self.calculatorDisplay.text = @"9";
        
    } else if (self.calculator.number1 != INT_MAX && ![self.calculator.operation isEqualToString:@"default"] && self.calculator.number2 != INT_MAX) {
    } else {
        NSLog(@"Something went wrong!");
    }
}

-(IBAction)plus:(id)sender {
    [self.calculator setOperation:@"+"];
    [self.operationDisplay setText:@"+"];
    
    NSLog(@"\n\n\n\n%@\n\n\n", self.calculator.operation);
};
-(IBAction)minus:(id)sender {
    [self.operationDisplay setText:@"-"];
    [self.calculator setOperation:@"-"];
    NSLog(@"\n\n\n\n%@\n\n\n", self.calculator.operation);
    
    
};
-(IBAction)times:(id)sender {
    [self.operationDisplay setText:@"*"];
    [self.calculator setOperation:@"*"];
    NSLog(@"\n\n\n\n%@\n\n\n", self.calculator.operation);
    
};
-(IBAction)divide:(id)sender {
    [self.operationDisplay setText:@"/"];
    [self.calculator setOperation:@"/"];
    NSLog(@"\n\n\n\n%@\n\n\n", self.calculator.operation);
    
};


- (IBAction)equal:(id)sender {
    if ([self.calculator.operation isEqualToString:@"+"]) {
        self.calculator.number1 = self.calculator.number1 + self.calculator.number2;
        [self.calculatorDisplay setText: [NSString stringWithFormat:@"%@", @(self.calculator.number1)]];
        self.calculator.number2 = INT_MAX;
        self.calculator.operation = @"default";
    } else if ([self.calculator.operation isEqualToString:@"-"]) {
        self.calculator.number1 = self.calculator.number1 - self.calculator.number2;
        [self.calculatorDisplay setText: [NSString stringWithFormat:@"%@", @(self.calculator.number1)]];
        self.calculator.number2 = INT_MAX;
        self.calculator.operation = @"default";
    } else if ([self.calculator.operation isEqualToString:@"*"]) {
        self.calculator.number1 = self.calculator.number1 * self.calculator.number2;
        [self.calculatorDisplay setText: [NSString stringWithFormat:@"%@", @(self.calculator.number1)]];
        self.calculator.number2 = INT_MAX;
        self.calculator.operation = @"default";
    } else if ([self.calculator.operation isEqualToString:@"/"]) {
        self.calculator.number1 = self.calculator.number1 / self.calculator.number2;
        [self.calculatorDisplay setText: [NSString stringWithFormat:@"%@", @(self.calculator.number1)]];
        self.calculator.number2 = INT_MAX;
        self.calculator.operation = @"default";
    } else {
        NSLog(@"Something went wrong");
    }
}

- (IBAction)clearAll:(id)sender {
    [self.calculator clear];
    self.calculatorDisplay.text = @"0";
    [self.operationDisplay setText:@""];
    NSLog(@"%@", self.calculatorMemory);
}

@end
