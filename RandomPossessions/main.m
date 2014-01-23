//
//  main.m
//  RandomPossessions
//
//  Created by Moser, Wesley on 1/22/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
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
    }
    return 0;
}

