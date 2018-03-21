//
//  YBLoadingView.m
//  Pods-YBUtils_Example
//
//  Created by PanYibin on 2018/3/21.
//

#import "YBLoadingView.h"

@interface YBLoadingView ()
{
    UIActivityIndicatorView *activityView;
}

@property (nonatomic, strong) UIWindow *overlayWindow;

@end

@implementation YBLoadingView

+ (instancetype)sharedView {
    static YBLoadingView *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[YBLoadingView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    });
    
    return _instance;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.backgroundColor = [UIColor colorWithWhite: 0.8 alpha: 0.8];
        
        UIView* centerView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 100, 100)];
        centerView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
        centerView.center = self.center;
        centerView.backgroundColor = [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1.0];
        centerView.layer.cornerRadius = 10;
        [self addSubview: centerView];
        
        activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleWhiteLarge];
        activityView.center = CGPointMake(50, 50);
        activityView.color = [UIColor whiteColor];
        activityView.hidesWhenStopped = YES;
        [centerView addSubview: activityView];
        
    }
    return self;
}

- (UIWindow *)overlayWindow {
    if (!_overlayWindow) {
        _overlayWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _overlayWindow.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _overlayWindow.backgroundColor = [UIColor clearColor];
        _overlayWindow.userInteractionEnabled = NO;
        _overlayWindow.windowLevel = UIWindowLevelStatusBar;
    }
    
    return _overlayWindow;
}

- (void)show {
    if (!self.superview) {
        [self.overlayWindow addSubview:self];
    }
    
    [activityView startAnimating];
    self.hidden = NO;
}

- (void)hide {
    [activityView stopAnimating];
    self.hidden = YES;
}

@end
