//
//  ViewController.h
//  Omikuzi
//
//  Created by 森井宣至 on 2015/04/07.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *fortuneButton;
@property (weak, nonatomic) IBOutlet UILabel *uranaiResultLabel;
- (IBAction)tapFortuneButton:(id)sender;


@end

