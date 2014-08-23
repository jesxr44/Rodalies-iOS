//
//  CreaLineas.m
//  Rodalies
//
//  Created by Jesús Escribano on 23/08/14.
//  Copyright (c) 2014 Running Dogs Studio. All rights reserved.
//

#import "CreaLineas.h"

@implementation CreaLineas

+(BOOL)baseDeDatosExistente
{
    NSManagedObjectContext *context = [[AppDelegate sharedAppDelegate] managedObjectContext];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Linea"
                                              inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    
    NSError *error;
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    
    return (fetchedObjects.count > 0) ? YES : NO;
    
}

+(void)crearLineas
{
    NSManagedObjectContext *context = [[AppDelegate sharedAppDelegate] managedObjectContext];
    
    NSManagedObject *lineaR1 = [NSEntityDescription
                                insertNewObjectForEntityForName:@"Linea"
                                inManagedObjectContext:context];
    
    //R1
    [lineaR1 setValue:@"R1" forKey:@"nombre"];
    [lineaR1 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r1_ca_ES.xml" forKey:@"url"];
    [lineaR1 setValue:@"rodalia1" forKey:@"twitter"];
    [lineaR1 setValue:@"R1" forKey:@"foto"];
    [lineaR1 setValue:[NSNumber numberWithInt:0] forKey:@"orden"];
    [lineaR1 setValue:@"Molins de rei - Maçanet - Mataró" forKeyPath:@"itinerario"];
    
    //R2 Nord
    NSManagedObject *lineaR2Nord = [NSEntityDescription
                                    insertNewObjectForEntityForName:@"Linea"
                                    inManagedObjectContext:context];
    [lineaR2Nord setValue:@"R2 Nord" forKey:@"nombre"];
    [lineaR2Nord setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r2_nord_ca_ES.xml" forKey:@"url"];
    [lineaR2Nord setValue:@"#rod2" forKey:@"twitter"];
    [lineaR2Nord setValue:@"R2Nord" forKey:@"foto"];
    [lineaR2Nord setValue:[NSNumber numberWithInt:1] forKey:@"orden"];
    [lineaR2Nord setValue:@"Aeroport - Maçanet - Granollers centre" forKeyPath:@"itinerario"];
    
    //R2 Sud
    NSManagedObject *lineaR2Sud = [NSEntityDescription
                                    insertNewObjectForEntityForName:@"Linea"
                                    inManagedObjectContext:context];
    [lineaR2Sud setValue:@"R2 Sud" forKey:@"nombre"];
    [lineaR2Sud setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r2_sud_ca_ES.xml" forKey:@"url"];
    [lineaR2Sud setValue:@"#rod2" forKey:@"twitter"];
    [lineaR2Sud setValue:@"R2Sud" forKey:@"foto"];
    [lineaR2Sud setValue:[NSNumber numberWithInt:2] forKey:@"orden"];
    [lineaR2Sud setValue:@"Sant Vicenç de C. - Vilanova - BCN Est. França" forKeyPath:@"itinerario"];
    
    //R3
    NSManagedObject *lineaR3 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR3 setValue:@"R3" forKey:@"nombre"];
    [lineaR3 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r3_ca_ES.xml" forKey:@"url"];
    [lineaR3 setValue:@"rodalia3" forKey:@"twitter"];
    [lineaR3 setValue:@"R3" forKey:@"foto"];
    [lineaR3 setValue:[NSNumber numberWithInt:3] forKey:@"orden"];
    [lineaR3 setValue:@"Hospitalet de LL. - Puigcerdà - Vic" forKeyPath:@"itinerario"];
    
    //R4
    NSManagedObject *lineaR4 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR4 setValue:@"R4" forKey:@"nombre"];
    [lineaR4 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r4_ca_ES.xml" forKey:@"url"];
    [lineaR4 setValue:@"rodalia4" forKey:@"twitter"];
    [lineaR4 setValue:@"R4" forKey:@"foto"];
    [lineaR4 setValue:[NSNumber numberWithInt:4] forKey:@"orden"];
    [lineaR4 setValue:@"Sant Vicentç de C. - Manresa - Vilafranca del P." forKeyPath:@"itinerario"];
    
    //R7
    NSManagedObject *lineaR7 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR7 setValue:@"R7" forKey:@"nombre"];
    [lineaR7 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r7_ca_ES.xml" forKey:@"url"];
    [lineaR7 setValue:@"#rodalia7" forKey:@"twitter"];
    [lineaR7 setValue:@"R7" forKey:@"foto"];
    [lineaR7 setValue:[NSNumber numberWithInt:5] forKey:@"orden"];
    [lineaR7 setValue:@"BCN Sant Andreu Arenal - Cerdanyola Uni." forKeyPath:@"itinerario"];
    
    //R8
    NSManagedObject *lineaR8 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR8 setValue:@"R8" forKey:@"nombre"];
    [lineaR8 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r8_ca_ES.xml" forKey:@"url"];
    [lineaR8 setValue:@"rodalia8" forKey:@"twitter"];
    [lineaR8 setValue:@"R8" forKey:@"foto"];
    [lineaR8 setValue:[NSNumber numberWithInt:6] forKey:@"orden"];
    [lineaR8 setValue:@"Martorell - Granollers Centre - Cerdanyola Uni." forKeyPath:@"itinerario"];
    
    //R11
    NSManagedObject *lineaR11 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR11 setValue:@"R11" forKey:@"nombre"];
    [lineaR11 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r11_ca_ES.xml" forKey:@"url"];
    [lineaR11 setValue:@"#rod11" forKey:@"twitter"];
    [lineaR11 setValue:@"R11" forKey:@"foto"];
    [lineaR11 setValue:[NSNumber numberWithInt:7] forKey:@"orden"];
    [lineaR11 setValue:@"BCN Sants - Portbou - Girona" forKeyPath:@"itinerario"];
    
    //R12
    NSManagedObject *lineaR12 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR12 setValue:@"R12" forKey:@"nombre"];
    [lineaR12 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r12_ca_ES.xml" forKey:@"url"];
    [lineaR12 setValue:@"#rod12" forKey:@"twitter"];
    [lineaR12 setValue:@"R12" forKey:@"foto"];
    [lineaR12 setValue:[NSNumber numberWithInt:8] forKey:@"orden"];
    [lineaR12 setValue:@"Hospitalet de LL. - Lleida - Manresa" forKeyPath:@"itinerario"];
    
    //R13
    NSManagedObject *lineaR13 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR13 setValue:@"R13" forKey:@"nombre"];
    [lineaR13 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r13_ca_ES.xml" forKey:@"url"];
    [lineaR13 setValue:@"#rod13" forKey:@"twitter"];
    [lineaR13 setValue:@"R13" forKey:@"foto"];
    [lineaR13 setValue:[NSNumber numberWithInt:9] forKey:@"orden"];
    [lineaR13 setValue:@"BCN Est. França - Lleida - Valls" forKeyPath:@"itinerario"];
    
    //R14
    NSManagedObject *lineaR14 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR14 setValue:@"R14" forKey:@"nombre"];
    [lineaR14 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r14_ca_ES.xml" forKey:@"url"];
    [lineaR14 setValue:@"#rod14" forKey:@"twitter"];
    [lineaR14 setValue:@"R14" forKey:@"foto"];
    [lineaR14 setValue:[NSNumber numberWithInt:10] forKey:@"orden"];
    [lineaR14 setValue:@"BCN Est. França - Lleida - Tarragona y Reus" forKeyPath:@"itinerario"];
    
    //R15
    NSManagedObject *lineaR15 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR15 setValue:@"R15" forKey:@"nombre"];
    [lineaR15 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r15_ca_ES.xml" forKey:@"url"];
    [lineaR15 setValue:@"#rod15" forKey:@"twitter"];
    [lineaR15 setValue:@"R15" forKey:@"foto"];
    [lineaR15 setValue:[NSNumber numberWithInt:11] forKey:@"orden"];
    [lineaR15 setValue:@"BCN Est. França - Riba-roja Ebre - Tarragona y Reus" forKeyPath:@"itinerario"];
    
    //R16
    NSManagedObject *lineaR16 = [NSEntityDescription
                                   insertNewObjectForEntityForName:@"Linea"
                                   inManagedObjectContext:context];
    [lineaR16 setValue:@"R16" forKey:@"nombre"];
    [lineaR16 setValue:@"http://www.gencat.cat/rodalies/incidencies_rodalies_rss_r16_ca_ES.xml" forKey:@"url"];
    [lineaR16 setValue:@"#rod16" forKey:@"twitter"];
    [lineaR16 setValue:@"R16" forKey:@"foto"];
    [lineaR16 setValue:[NSNumber numberWithInt:12] forKey:@"orden"];
    [lineaR16 setValue:@"BCN Est. França - Tortosa/Ulldecona" forKeyPath:@"itinerario"];
    
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
}

@end
