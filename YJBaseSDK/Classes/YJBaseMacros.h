//
//  YJPublicBaseMacros.h
//  Pods
//
//  Created by YJ on 2022/10/27.
//

#ifndef YJPublicBaseMacros_h
#define YJPublicBaseMacros_h


#define kIPhoneX (kScreenWidth >= 375 && kScreenHeight >= 812)

#define kScreenWidth  MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)
#define kScreenHeight MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)

///状态栏高度
#define kStatusBarHeight (kIPhoneX ? 44 : 20)
///导航栏高度
#define kNaviBarHeight 44
///状态栏和导航栏总高度
#define kNaviAndStatusBarHeight (kIPhoneX ? 88 : 64)
///顶部安全区域
#define kTopBarSafeHeight (kIPhoneX ? 44 : 0)
///底部安全区域
#define kBottomSafeHeight (kIPhoneX ? 34 : 0)
///底部自定义布局间距
#define kBottomCustomSpace (kIPhoneX ? 18 : 0)
///TabBar高度
#define kTabBarHeight (49 + kBottomSafeHeight)
///布局缩放比例（宽度）
#define kWidthScale (kScreenWidth/375.0)


#define kWeakSelf __weak typeof(self) weakSelf = self;
#define kStrongSelf __strong typeof(weakSelf) strongSelf = weakSelf;

#endif /* YJPublicBaseMacros_h */
