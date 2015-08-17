//
//  ViewController.m
//  CalculatorApp
//
//  Created by TWer  on 8/17/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
NSMutableString *strregister;
int isecond;
int iresult;
int caltype;
- (void)viewDidLoad {
    [super viewDidLoad];
    strregister=[NSMutableString stringWithCapacity:10];
   
    self.ResultText.text=@"0";

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)one:(id)sender {
     [strregister appendString:@"1"];
    self.ResultText.text=strregister;
}

- (IBAction)two:(id)sender {
    [strregister appendString:@"2"];
    self.ResultText.text=strregister;
}

- (IBAction)three:(id)sender {
    [strregister appendString:@"3"];
    self.ResultText.text=strregister;
}

- (IBAction)four:(id)sender {
    [strregister appendString:@"4"];
    self.ResultText.text=strregister;
}

- (IBAction)five:(id)sender {
    [strregister appendString:@"5"];
    self.ResultText.text=strregister;
}

- (IBAction)six:(id)sender {
    [strregister appendString:@"6"];
    self.ResultText.text=strregister;
}

- (IBAction)seven:(id)sender {
    [strregister appendString:@"7"];
    self.ResultText.text=strregister;
}

- (IBAction)eight:(id)sender {
    [strregister appendString:@"8"];
    self.ResultText.text=strregister;
}

- (IBAction)nine:(id)sender {
    [strregister appendString:@"9"];
    self.ResultText.text=strregister;
}

- (IBAction)zero:(id)sender {
    [strregister appendString:@"0"];
    self.ResultText.text=strregister;
}

- (IBAction)add:(id)sender {
    caltype=ADD;
    iresult=[self.ResultText.text intValue];
    [strregister setString:@""];
    
}

- (IBAction)sub:(id)sender {
    caltype=SUB;
    iresult=[self.ResultText.text intValue];
    [strregister setString:@""];
}

-(void)CalResult
{
    isecond=[strregister intValue];
    switch (caltype) {
        case ADD:
            iresult+=isecond;
            break;
        case SUB:
            iresult-=isecond;
            break;
        default:
            break;
    }
    
}

- (IBAction)result:(id)sender {
    [self CalResult];
    self.ResultText.text=[NSString stringWithFormat:@"%d",iresult];
    [strregister setString:@""];
}

- (IBAction)clear:(id)sender {
    [strregister setString:@""];
    self.ResultText.text=@"0";
}


@end
