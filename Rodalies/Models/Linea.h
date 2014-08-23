//
//  Linea.h
//  Rodalies
//
//  Created by Jesús Escribano on 24/08/14.
//  Copyright (c) 2014 Running Dogs Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Linea : NSManagedObject

@property (nonatomic, retain) NSString * foto;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSString * twitter;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSNumber * orden;
@property (nonatomic, retain) NSString * itinerario;

@end
