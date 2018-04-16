//
//  TableViewController.m
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import "TableViewController.h"
#import "City.h"
#import "CityCell.h"
#import "CellDecorator.h"

#define kNumberOfSection 1

@interface TableViewController ()

@property (nonatomic, strong) NSMutableArray *citiesList;
@property (nonatomic, strong) id<CellDecoratorProtocol> cellDecorator;

@end

@implementation TableViewController

@synthesize manager, cell, router;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ГОРОДА";
    self.cellDecorator = [CellDecorator new];
    [self initCities];
    [self registerCells];
}

- (void)initCities {
    self.citiesList = [NSMutableArray new];
    City *city1 = [[City alloc] initWithName:@"Moscow" id:1];
    City *city2 = [[City alloc] initWithName:@"Kyev" id:2];
    City *city3 = [[City alloc] initWithName:@"St Peterburg" id:3];
    City *city4 = [[City alloc] initWithName:@"Minsk" id:4];
    City *city5 = [[City alloc] initWithName:@"Karaganda" id:5];
    [self.citiesList addObjectsFromArray:@[city1, city2, city3, city4, city5]];
}

- (void)registerCells {
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CityCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:NSStringFromClass([CityCell class])];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return kNumberOfSection;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.citiesList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CityCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([CityCell class])];
    id<CityProtocol> model = self.citiesList[indexPath.row];
    [self.cellDecorator decorate:cell city:model];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
