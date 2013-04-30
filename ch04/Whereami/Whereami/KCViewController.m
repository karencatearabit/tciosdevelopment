//
//  KCViewController.m
//  Whereami
//
//  Created by Karen Cate Arabit on 4/30/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//
#import "KCViewController.h"

@interface KCViewController ()

@end

@implementation KCViewController

-(void)viewDidLoad
{
    [worldView setShowsUserLocation:YES];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        //Create location manager object
        locationManger = [[CLLocationManager alloc]init];
        
        [locationManger setDelegate:self];
        
        //And we want it to be as accurate as possible
        //regardless of how much time/ power it takes
        [locationManger setDesiredAccuracy:kCLLocationAccuracyBest];
        
//        //Tell out manager to start looking for its location immediately
//        [locationManger startUpdatingLocation];
    }
    return self;
}

-(void) locationManager: (CLLocationManager *)manager
 didUpdateToLocation: (CLLocation *) newLocation
fromLocation: (CLLocation *) oldLocation
{
    NSLog(@"%@", newLocation);
}


-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Could not find location: %@", error);
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

-(void) dealloc
{
    //Tell the location manager to stop sending us messages
    [locationManger setDelegate:nil];
}
@end
