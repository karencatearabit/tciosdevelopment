//
//  QViewController.h
//  Quiz
//
//  Created by Karen Cate Arabit on 4/26/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QViewController : UIViewController
{
    int qIndex;
    
    //The model objects
    NSMutableArray *qs;
    NSMutableArray *as;
    
    //The view objects
    IBOutlet UILabel *qField;
    IBOutlet UILabel *aField;
}

-(IBAction)showQs:(id)sender;
-(IBAction)showAs:(id)sender;

@end
