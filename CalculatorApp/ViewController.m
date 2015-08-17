//
//  ViewController.m
//  CalculatorApp
//
//  Created by TWer  on 8/17/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableString *strregister;
    int isecond;
    int iresult;
    int caltype;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    strregister=[NSMutableString stringWithCapacity:10];
   
    self.ResultText.text=@"0";

    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)countbtn:(id)sender {
    UIButton* btn = sender;
    NSString *name= [btn titleForState:UIControlStateNormal];
//    NSLog(@"name=%@",name);
    [strregister appendString:name];
    self.ResultText.text=strregister;
}



- (IBAction)cal:(id)sender {
    UIButton* btn = sender;
    NSString *name= [btn titleForState:UIControlStateNormal];
    if([name isEqualToString:@"+"])
        caltype=ADD;
    if([name isEqualToString:@"-"])
        caltype=SUB;
    if([name isEqualToString:@"x"])
        caltype=MULT;
    if([name isEqualToString:@"/"])
        caltype=DIV;
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
        case MULT:
            iresult*=isecond;
            break;
        case DIV:
            iresult/=isecond;
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
