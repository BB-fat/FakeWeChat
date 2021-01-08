//
//  FWCLabelMacro.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/8.
//

#ifndef FWCLabelMacro_h
#define FWCLabelMacro_h

#define FWCLabelInitAndConfigure(_name, _font, _color)                                                                 \
    _name = QMUILabel.alloc.init;                                                                                      \
    _name.font = _font;                                                                                                \
    _name.textColor = _color

#endif /* FWCLabelMacro_h */
