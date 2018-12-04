//
//  ViewController.m
//  ASJOverflowButtonExample
//
//  Created by sudeep on 21/12/15.
//  Copyright © 2015 sudeep. All rights reserved.
//

#import "ViewController.h"
#import "ASJOverflowButton.h"

@interface ViewController ()

@property (strong, nonatomic) ASJOverflowButton *overflowButton;
@property (copy, nonatomic) NSArray *overflowItems;
@property (weak, nonatomic) IBOutlet UILabel *itemLabel;

- (void)setup;
- (void)setupDefaults;
- (void)setupOverflowItems;
- (void)setupOverflowButton;
- (void)handleOverflowBlocks;

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self setup];
}

#pragma mark - Setup

- (void)setup
{
  [self setupDefaults];
  [self setupOverflowItems];
  [self setupOverflowButton];
  [self handleOverflowBlocks];
}

- (void)setupDefaults
{
  self.title = @"Tap me -->";
  _itemLabel.superview.hidden = YES;
}

- (void)setupOverflowItems
{
  NSMutableArray *temp = [[NSMutableArray alloc] init];
  for (int i=1; i<=6; i++)
  {
    NSString *itemName = [NSString stringWithFormat:@"Item %d", i];
    NSString *imageName = [NSString stringWithFormat:@"item_%d", i];
    UIImage *image = [UIImage imageNamed:imageName];
    
    ASJOverflowItem *item = [ASJOverflowItem itemWithName:itemName image:nil backgroundColor:nil];
    [temp addObject:item];
  }
  _overflowItems = [NSArray arrayWithArray:temp];
}

- (void)setupOverflowButton
{
  UIImage *image = [UIImage imageNamed:@"overflow_icon"];
  
  _overflowButton = [[ASJOverflowButton alloc] initWithImage:image items:_overflowItems];
  _overflowButton.dimsBackground = NO;
  _overflowButton.hidesSeparator = YES;
  _overflowButton.hidesShadow = NO;
  _overflowButton.dimmingLevel = 0.3f;
  _overflowButton.menuItemHeight = 40.0f;
  _overflowButton.widthMultiplier = 0.5f;
  _overflowButton.itemTextColor = [UIColor blackColor];
  _overflowButton.menuBackgroundColor = [UIColor whiteColor];
  _overflowButton.itemHighlightedColor = [UIColor colorWithWhite:0.0f alpha:0.1f];
  _overflowButton.menuMargins = MenuMarginsMake(7.0f, 7.0f, 7.0f);
  _overflowButton.menuAnimationType = MenuAnimationTypeZoomIn;
  _overflowButton.itemFont = [UIFont fontWithName:@"Verdana" size:13.0f];
  _overflowButton.delegate = self;
  
  self.navigationItem.rightBarButtonItem = _overflowButton;
}

- (void)handleOverflowBlocks
{
  [_overflowButton setHideMenuBlock:^{
    NSLog(@"hidden");
  }];
}

- (void)overflowMenu:(nonnull ASJOverflowMenu *)sender customizeCell:(nonnull UITableViewCell *)cell forItem:(nonnull ASJOverflowItem *)item {
  NSLog(@"customizeCell: %@", item.name);
  if ([item.name isEqualToString:@"Item 4"]) {
    item.enabled = NO;
    cell.textLabel.textColor = UIColor.grayColor;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
  }
}

- (void)overflowMenu:(nonnull ASJOverflowMenu *)sender didSelectItem:(nonnull ASJOverflowItem *)item atIndex:(NSUInteger)idx {
  NSLog(@"didSelectItem: %@", item.name);
  self.itemLabel.text = item.name;
  if (self.itemLabel.superview.hidden) {
    self.itemLabel.superview.hidden = NO;
  }
}

@end
