//
//  MainViewController.h
//  ParseStarterProject
//
//  Created by Никита Ярмолюк on 6/5/15.
//
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <MapKit/MKAnnotation.h>
#import <Parse/Parse.h>

@interface MainViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property(nonatomic, retain) CLLocationManager *locationManager;

@end
