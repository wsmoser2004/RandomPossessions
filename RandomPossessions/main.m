//
//  main.m
//  RandomPossessions
//
//  Created by Moser, Wesley on 1/22/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        NSLog(@"No sub-items:");
        for (int i = 0; i < 10; i++)
        {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        for (BNRItem *item in items) {
            NSLog(@"%@ %d %@",
                  [item itemName],
                  [item valueInDollars],
                  [item serialNumber]);
        }
        
        NSLog(@"With sub-items:");
        BNRContainer *container1 = [[BNRContainer alloc] initWithItemName:@"Container 1" serialNumber:@"ABCDEF"];
        [container1 addSubItem:[BNRItem randomItem]];
        [container1 addSubItem:[BNRItem randomItem]];
        [container1 addSubItem:[BNRItem randomItem]];
        BNRContainer *container2 = [[BNRContainer alloc] initWithItemName:@"Container 2" serialNumber:@"GHIJKL"];
        [container2 addSubItem:[BNRItem randomItem]];
        [container2 addSubItem:[BNRItem randomItem]];
        [container2 addSubItem:container1];
        NSLog(@"%@", container2);
        
    }
    return 0;
}

