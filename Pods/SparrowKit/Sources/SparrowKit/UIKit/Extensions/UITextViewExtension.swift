// The MIT License (MIT)
// Copyright © 2020 Ivan Vorobei (hello@ivanvorobei.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#if canImport(UIKit) && (os(iOS) || os(tvOS))

import UIKit

public extension UITextView {
    
    // MARK: - Layout
    
    /**
     SparrowKit: Layout label with fix widget and dynamic `height`.
     
     If label width fewer of requested value, it set to requested value.
     
     - parameter width: `Widght` of label.
     */
    func layoutDynamicHeight(width: CGFloat) {
        
        // Requerid for dynamic height.
        if isScrollEnabled { isScrollEnabled = false }
        
        frame.setWidth(width)
        sizeToFit()
        if frame.width != width {
            frame.setWidth(width)
        }
    }
    
    /**
     SparrowKit: Layout label with fix widget and dynamic `height`.
     
     If label width fewer of requested value, it set to requested value.
     
     - parameter x: Orinig `x` position.
     - parameter y: Orinig `y` position.
     - parameter width: `Widght` of label.
     */
    func layoutDynamicHeight(x: CGFloat, y: CGFloat, width: CGFloat) {
        
        // Requerid for dynamic height.
        if isScrollEnabled { isScrollEnabled = false }
        
        frame = CGRect.init(x: x, y: y, width: width, height: frame.height)
        sizeToFit()
        if frame.width != width {
            frame.setWidth(width)
        }
    }
}

#endif
