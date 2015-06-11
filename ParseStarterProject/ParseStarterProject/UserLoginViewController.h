//
//  UserLoginViewController.h
//  Tops
//
//  Created by Никита Ярмолюк on 6/4/15.
//  Copyright (c) 2015 Никита Ярмолюк. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <ParseFacebookUtilsV4/PFFacebookUtils.h>

@interface UserLoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *fbLogIn;

@end
