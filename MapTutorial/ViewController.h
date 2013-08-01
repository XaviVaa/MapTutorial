//
//  ViewController.h
//  MapTutorial
//
//  Created by Lan on 01/08/13.
//  Copyright (c) 2013 Miyo's Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
{
    
}
// Creamos el Outled de tipo MKMapView para controlar el objeto del mapa
@property(nonatomic, retain) IBOutlet MKMapView *mapView;

@end
