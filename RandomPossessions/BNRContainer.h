//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by Moser, Wesley on 1/23/14.
//  Copyright (c) 2014 Moser, Wesley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *subItems;
}

- (void) addSubItem:(BNRItem *)item;

@end
