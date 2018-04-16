//
//  TableViewController.h
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Manager.h"
#import "CellDecorator.h"
#import "Router.h"

@interface TableViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) Manager *manager;
@property (strong, nonatomic) CellDecorator *cell;
@property (strong, nonatomic) Router *router;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
