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
    [self.operationDisplay setText:@"b"];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonZero:(id)sender {
    NSLog(@"Hello 0!");
    [self.calculatorMemory addObject:@"0"];
    [self.calculatorDisplay setText:@"0"];
}
- (IBAction)buttonOne:(id)sender {
    NSLog(@"Hello 1!");
    [self.calculatorMemory addObject:@"1"];
    NSLog(@"%@", self.calculatorMemory);
    [self.calculatorDisplay setText:@"1"];
}
- (IBAction)buttonTwo:(id)sender {
    NSLog(@"Hello 2!");
    [self.calculatorMemory addObject:@"2"];
    NSLog(@"%@", self.calculatorMemory);
    [self.calculatorDisplay setText:@"2"];
}
- (IBAction)buttonThree:(id)sender {
    NSLog(@"Hello 3!");
    [self.calculatorMemory addObject:@"3"];
    NSLog(@"%@", self.calculatorMemory);
    [self.calculatorDisplay setText:@"3"];
    
}
- (IBAction)buttonFour:(id)sender {
    NSLog(@"Hello 4!");
    [self.calculatorMemory addObject:@"4"];
    NSLog(@"%@", self.calculatorMemory);
    
}
- (IBAction)buttonFive:(id)sender {
    NSLog(@"Hello 5!");
    [self.calculatorMemory addObject:@"5"];
    NSLog(@"%@", self.calculatorMemory);
    
}
- (IBAction)buttonSix:(id)sender {
    NSLog(@"Hello 6!");
    [self.calculatorMemory addObject:@"6"];
    NSLog(@"%@", self.calculatorMemory);
    
}
- (IBAction)buttonSeven:(id)sender {
    NSLog(@"Hello 7!");
    [self.calculatorMemory addObject:@"7"];
    NSLog(@"%@", self.calculatorMemory);
    
}
- (IBAction)buttonEight:(id)sender {
    NSLog(@"Hello 8!");
    [self.calculatorMemory addObject:@"8"];
    NSLog(@"%@", self.calculatorMemory);
    
}
-(IBAction)buttonNine:(id)sender {
    NSLog(@"Hello 9!");
    [self.calculatorMemory addObject:@"9"];
    NSLog(@"%@", self.calculatorMemory);
    
}

-(IBAction)plus:(id)sender {
    [self.calculatorMemory replaceObjectAtIndex:2 withObject:@("+")];
    [self.operationDisplay setText:@"+"];
    NSLog(@"\n\n\n\n%@\n\n\n\n", self.calculatorMemory[2]);
    NSLog(@"%@", self.calculatorMemory);
    
};
-(IBAction)minus:(id)sender {
    [self.calculatorMemory replaceObjectAtIndex:2 withObject:@("-")];
    [self.operationDisplay setText:@"-"];
    NSLog(@"\n\n\n\n%@\n\n\n\n", self.calculatorMemory[2]);
    NSLog(@"%@", self.calculatorMemory);
    
};
-(IBAction)times:(id)sender {
    [self.calculatorMemory replaceObjectAtIndex:2 withObject:@("*")];
    [self.operationDisplay setText:@"*"];
    NSLog(@"\n\n\n\n%@\n\n\n\n", self.calculatorMemory[2]);
    NSLog(@"%@", self.calculatorMemory);
    
};
-(IBAction)divide:(id)sender {
    [self.calculatorMemory replaceObjectAtIndex:2 withObject:@("/")];
    [self.operationDisplay setText:@"/"];
    NSLog(@"\n\n\n\n%@\n\n\n\n", self.calculatorMemory[2]);
    NSLog(@"%@", self.calculatorMemory);
    
};

- (IBAction)clear:(id)sender {
    [self.calculatorDisplay setText:@"0"];
    NSLog(@"%@", self.calculatorMemory);
}

- (IBAction)equal:(id)sender {
    self.calculatorMemory = [NSMutableArray array];
    
}

@end
