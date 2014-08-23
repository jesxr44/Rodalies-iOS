//
//  PreferenciasViewController.m
//  Rodalies
//
//  Created by Jesús Escribano on 23/08/14.
//  Copyright (c) 2014 Running Dogs Studio. All rights reserved.
//

#import "PreferenciasViewController.h"

@interface PreferenciasViewController ()

@end

@implementation PreferenciasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
//    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Linea"
//                                              inManagedObjectContext:[[AppDelegate sharedAppDelegate] managedObjectContext]];
//    [fetchRequest setEntity:entity];
//    
//    NSError *error;
//    NSArray *fetchedObjects = [[[AppDelegate sharedAppDelegate] managedObjectContext] executeFetchRequest:fetchRequest error:&error];
//    
//    NSSortDescriptor *valueDescriptor = [[NSSortDescriptor alloc] initWithKey:@"orden" ascending:YES];
//    NSArray *descriptors = [NSArray arrayWithObject:valueDescriptor];
//    NSArray *sortedArray = [fetchedObjects sortedArrayUsingDescriptors:descriptors];
//    
//    for (NSManagedObject *linea in sortedArray) {
//        NSLog(@"Nombre: %@", [linea valueForKey:@"nombre"]);
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
