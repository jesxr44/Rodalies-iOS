//
//  PreferenciasViewController.m
//  Rodalies
//
//  Created by Jesús Escribano on 23/08/14.
//  Copyright (c) 2014 Running Dogs Studio. All rights reserved.
//

#import "PreferenciasViewController.h"

@interface PreferenciasViewController ()
@property (strong, nonatomic) IBOutlet UIView *vistaTabla;
@property(nonatomic, strong) NSArray *lineasArray;
@property (strong, nonatomic) IBOutlet UITableView *lineasTabla;

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
    
    self.lineasTabla.delegate = self;
    self.lineasTabla.dataSource = self;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Linea"
                                              inManagedObjectContext:[[AppDelegate sharedAppDelegate] managedObjectContext]];
    [fetchRequest setEntity:entity];
    
    NSError *error;
    NSArray *fetchedObjects = [[[AppDelegate sharedAppDelegate] managedObjectContext] executeFetchRequest:fetchRequest error:&error];
    
    NSSortDescriptor *valueDescriptor = [[NSSortDescriptor alloc] initWithKey:@"orden" ascending:YES];
    NSArray *descriptors = [NSArray arrayWithObject:valueDescriptor];
    self.lineasArray = [fetchedObjects sortedArrayUsingDescriptors:descriptors];
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.lineasArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LineaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Linea" forIndexPath:indexPath];
    
    Linea *linea = [self.lineasArray objectAtIndex:indexPath.row];
    
    cell.nombre.text = linea.nombre;
    cell.itinerario.text = linea.itinerario;
    cell.imagen.image = [UIImage imageNamed:linea.foto];
    
    return cell;
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
