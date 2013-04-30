//
//  main.m
//  RandomPossessions
//
//  Created by Karen Cate Arabit on 4/29/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc]init];
        
        //Send the message addObject: to the NSMutabbleArray pointed to
        //by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        //Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        for(int i = 0 ; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        
        //Destroy the array pointed to by items
        items = nil;
        
        //page 63
    }
    return 0;
}

