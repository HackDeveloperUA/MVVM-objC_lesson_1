//
//  StartViewController.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPStartViewController.h"

@interface FRPStartViewController ()

@end

@implementation FRPStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"FRPCityCellXIB" bundle:nil] forCellReuseIdentifier:@"FRPCityCell"];
}


#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.f;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewModel numberOfCities];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* identifier = @"FRPCityCell";
    FRPCityCell *cell = (FRPCityCell*)[tableView dequeueReusableCellWithIdentifier:identifier];

    cell.viewModel = [self.viewModel cellViewModel:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    FRPDetailsViewController* detailVC = [storyboard instantiateViewControllerWithIdentifier:@"FRPDetailsViewController"];
    detailVC.viewModel = [self.viewModel detailsViewModel:indexPath.row];
    [self presentViewController:detailVC animated:YES completion:nil];
}


#pragma mark - Others

- (void) setViewModel:(FRPStartViewModel *)viewModel
{
#warning Осторожно потому что может тут нужно руками устанавливать значения
    _viewModel = viewModel;
    [_viewModel updateWeather:^{
        [self.tableView reloadData];
    }];
}



@end
