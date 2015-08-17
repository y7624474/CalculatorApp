//
//  ViewController.h
//  CalculatorApp
//
//  Created by TWer  on 8/17/15.
//  Copyright (c) 2015 TWer . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *ResultText;

enum CalType{ADD=10,SUB,MULT,DIV};


- (IBAction)countbtn:(id)sender;


- (IBAction)cal:(id)sender;





- (IBAction)result:(id)sender;

- (IBAction)clear:(id)sender;

-(void)CalResult;
@end

