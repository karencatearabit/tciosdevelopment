//
//  QViewController.m
//  Quiz
//
//  Created by Karen Cate Arabit on 4/26/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import "QViewController.h"

@interface QViewController ()

@end

@implementation QViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        //Create 2 arrays and make the pointers point to them
        qs = [[NSMutableArray alloc] init];
        as = [[NSMutableArray alloc] init];
        
        //Add questions and answers to the arrays
        [qs addObject:@"What is 7 + 7?"];
        [as addObject:@"14"];
        
        [qs addObject:@"Who is awesome?"];
        [as addObject:@"KC"];
        
        [qs addObject:@"Where did you study?"];
        [as addObject:@"iACADEMY"];
    }
    
    return self;
}

- (IBAction)showQs:(id)sender
{
    //Step to the next question
    qIndex++;
    
    //Am i past the last question?
    if (qIndex == [qs count]) {
        //Go back ti the first question
        qIndex = 0;
    }
    
    //Get the string at that index in the questions array
    NSString *q = [qs objectAtIndex:qIndex];
    
    //Log the string to the console
    NSLog(@"displaying question: %@", q);
    
    //Display the string in the question field
    [qField setText:q];
    
    //Clear the answer field
    [aField setText:@"???"];
}

-(IBAction)showAs:(id)sender
{
    //What is the answer to the current question?
    NSString *a = [as objectAtIndex:qIndex];
    
    //Display it in the answer field
    [aField setText:a];
}

@end
