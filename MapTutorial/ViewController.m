//
//  ViewController.m
//  MapTutorial
//
//  Created by Lan on 01/08/13.
//  Copyright (c) 2013 Miyo's Inc. All rights reserved.
//

#import "ViewController.h"
#import "CustomAnnotation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CLLocationCoordinate2D initialLocation;
    initialLocation.latitude = 19.42801395;
    initialLocation.longitude = -99.17060089;
    
    // Esto situara el centro del maa en valencia con la distancia de region que establezcamos
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(initialLocation, 2000, 2000);
    
    [self.mapView setRegion:region animated:YES];
    
    for(int i=0;i<10;i++)
    {
        // Calculamos una distancia aleatoria en latitud y longitud suficientemente corta para que se muestre en nuestra region
        CGFloat latDelta = rand()*.035/RAND_MAX -.02;
        CGFloat longDelta = rand()*.03/RAND_MAX -.015;
        
        CGFloat newLat = initialLocation.latitude + latDelta;
        CGFloat newLon = initialLocation.longitude + longDelta;
        
        CLLocationCoordinate2D newCoord = {newLat, newLon};
        
        CustomAnnotation *annotation = [[CustomAnnotation alloc]initWithTitle: @"Apprendemos.com"
                                                                     subtitle: [NSString stringWithFormat:@"Has pinchado en la anotacion %d",i] andCoordinate:newCoord];
        
        [self.mapView addAnnotation:annotation];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
