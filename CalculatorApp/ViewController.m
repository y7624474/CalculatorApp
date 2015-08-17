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
int ifirst;
int isecond;
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
    ifirst=[strregister intValue];
    [strregister setString:@""];
}

- (IBAction)sub:(id)sender {
    [strregister appendString:@"-"];
    self.ResultText.text=strregister;
}

- (IBAction)result:(id)sender {
    
    switch (caltype) {
        case ADD:
            isecond=[strregister intValue];
            self.ResultText.text=[NSString stringWithFormat:@"%d",ifirst+isecond];
            break;
        case SUB:
            isecond=[strregister intValue];
            self.ResultText.text=[NSString stringWithFormat:@"%d",ifirst-isecond];
            break;
        default:
            break;
    }
}

- (IBAction)clear:(id)sender {
    [strregister setString:@""];
    self.ResultText.text=@"0";
}


@end
