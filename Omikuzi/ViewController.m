//
//  ViewController.m
//  Omikuzi
//
//  Created by 森井宣至 on 2015/04/07.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>
{
    NSString *title;
    NSString *message;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapFortuneButton:(id)sender {
    
    int random_nummber;
    random_nummber = rand() % 5;
    
    switch(random_nummber){
        case 0:
            title = @"大吉";
            message = @"とてもおめでとう";
            break;
        case 1:
            title = @"中吉";
            message = @"ちょっとおめでとう";
            break;
        case 2:
            title = @"吉";
            message = @"おめでとう";
            break;
        case 3:
            title = @"凶";
            message = @"やばい今年死ぬかも";
            break;
        case 4:
            title = @"大凶";
            message = @"やばい今日死ぬかも";
            break;
    }
    
    UIAlertView *alert =
    [
     [UIAlertView alloc]
        initWithTitle:title
        message:message
        delegate:self
        cancelButtonTitle:@"Cancel"
        otherButtonTitles:@"OK",nil
    ];
    [alert show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSLog(@"%@",title);
    if([title  isEqual: @"大吉"]){
        self.uranaiResultLabel.text = @"最高だね";
    }
    if([title  isEqual: @"中吉"]){
        self.uranaiResultLabel.text = @"ちょいラッキーだね";
    }
    if([title  isEqual: @"吉"]){
        self.uranaiResultLabel.text = @"普通だね";
    }
    if([title  isEqual: @"凶"]){
        self.uranaiResultLabel.text = @"憂鬱だね";
    }
    if([title  isEqual: @"大凶"]){
        self.uranaiResultLabel.text = @"最悪だね";
    }
    
    switch (buttonIndex) {
        case 0:
            self.uranaiResultLabel.text = @"占いの結果は";
            break;
        case 1:
            break;
    }
    
}
@end
