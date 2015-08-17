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

- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)zero:(id)sender;


- (IBAction)add:(id)sender;

- (IBAction)sub:(id)sender;

- (IBAction)result:(id)sender;

- (IBAction)clear:(id)sender;

@end

