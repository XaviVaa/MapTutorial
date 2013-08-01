//
//  CustomAnnotation.m
//  MapTutorial
//
//  Created by Lan on 01/08/13.
//  Copyright (c) 2013 Miyo's Inc. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation

@synthesize title, subtitle, coordinate;

// Implementamos el metodo de inicializacion del objeto.
- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString *)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord
{
    self = [super init];
    title = aTitle;
    subtitle = aSubtitle;
    coordinate = coord;
    return self;
}

@end
