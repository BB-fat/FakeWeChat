//
//  FWCYogaMacro.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/3.
//

#ifndef FWCYogaMacro_h
#define FWCYogaMacro_h

#define FWCYogaEnable layout.isEnabled = YES

#define FWCYogaFlexDirectionRow layout.flexDirection = YGFlexDirectionRow
#define FWCYogaFlexDirectionColumn layout.flexDirection = YGFlexDirectionColumn

#define FWCYogaAlignItemsStart layout.alignItems = YGAlignFlexStart
#define FWCYogaAlignItemsEnd layout.alignItems = YGAlignFlexEnd
#define FWCYogaAlignItemsCenter layout.alignItems = YGAlignCenter
#define FWCYogaAlignItemsSpaceBetween layout.alignItems = YGAlignSpaceBetween

#define FWCYogaPaddingHorizontal(_value) layout.paddingHorizontal = YGPointValue(_value)
#define FWCYogaPaddingVertical(_value) layout.paddingVertical = YGPointValue(_value)

#endif /* FWCYogaMacro_h */
