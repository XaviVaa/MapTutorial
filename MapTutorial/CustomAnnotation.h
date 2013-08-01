//
//  CustomAnnotation.h
//  MapTutorial
//
//  Created by Lan on 01/08/13.
//  Copyright (c) 2013 Miyo's Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

// Implementamos el protocolo MKAnnotation

@interface CustomAnnotation : NSObject <MKAnnotation>
{
    // Creamos un titulo
    NSString *tittle;
    // Declaramos un subitulo
    NSString *subtitle;
    //y una coordenada
    CLLocationCoordinate2D coordinate;
}

// Definimos sus propiedades
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// Y el metodo de inicializacion
- (id)initWithTitle:(NSString *)aTitle subtitle:(NSString *)aSubtitle andCoordinate:(CLLocationCoordinate2D)coord;
@end
