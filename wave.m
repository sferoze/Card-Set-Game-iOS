// this method draws one wave symbol, type and color can be set below
// preferably make the rectangle you draw this in have a width/height ratio of 1.85 to 1

- (void)drawRect:(CGRect)rect
{
    //place logic here to set color and type of a single wave symbol:
    double red = 0.2;
    double green = 0.5;
    double blue = 1;
    double alpha = 1;
    
    int type = 2; //1 for empty, 2 for lined, 3 for full
    
    
    // no need to touch anything from here on, should size within rectangle and keep the correct ratio
    CGRect frame = self.frame;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextScaleCTM(context, frame.size.width / 250.000000 , (frame.size.width / 250.000000));
    CGContextTranslateCTM(context, -1, 135);
    
    // Begin Drawing
    
#pragma mark - Layer: emptywave
    
    if (type == 1)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin compound path <Compound Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 227.638672, -22.570312);
            CGPathAddCurveToPoint(pathref, NULL, 222.857422, -13.781738, 213.790039, -10.534668, 204.377930, -12.276855);
            CGPathAddCurveToPoint(pathref, NULL, 204.050781, -12.303223, 203.708984, -12.365723, 203.354492, -12.470703);
            CGPathAddCurveToPoint(pathref, NULL, 202.957031, -12.559570, 202.603516, -12.687500, 202.284180, -12.843262);
            CGPathAddCurveToPoint(pathref, NULL, 197.326172, -14.590332, 193.648438, -17.799805, 189.653320, -21.231934);
            CGPathAddCurveToPoint(pathref, NULL, 185.169922, -25.083984, 178.856445, -27.792969, 173.421875, -29.983887);
            CGPathAddCurveToPoint(pathref, NULL, 160.253906, -35.292480, 146.034180, -36.033691, 132.621094, -31.314453);
            CGPathAddCurveToPoint(pathref, NULL, 119.108887, -26.560059, 106.710449, -20.733398, 92.406250, -18.480957);
            CGPathAddCurveToPoint(pathref, NULL, 79.752441, -16.487793, 66.584961, -16.774414, 54.444336, -21.151367);
            CGPathAddCurveToPoint(pathref, NULL, 33.968750, -28.533203, 21.271973, -51.384277, 18.886719, -72.133789);
            CGPathAddCurveToPoint(pathref, NULL, 17.050781, -88.104492, 17.119141, -119.264648, 37.355469, -124.149414);
            CGPathAddCurveToPoint(pathref, NULL, 48.430664, -126.823242, 58.111328, -120.758789, 66.581055, -114.432617);
            CGPathAddCurveToPoint(pathref, NULL, 77.274902, -106.444336, 88.558594, -101.693359, 102.228516, -102.396484);
            CGPathAddCurveToPoint(pathref, NULL, 116.109863, -103.111328, 128.737305, -111.351562, 142.230469, -114.115234);
            CGPathAddCurveToPoint(pathref, NULL, 154.634766, -116.655273, 167.792969, -116.126953, 180.049805, -113.109375);
            CGPathAddCurveToPoint(pathref, NULL, 200.451172, -108.086914, 218.861328, -93.688477, 227.247070, -74.254883);
            CGPathAddCurveToPoint(pathref, NULL, 233.897461, -58.843750, 235.909180, -37.769043, 227.638672, -22.570312);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 223.049805, -56.293457);
            CGPathAddCurveToPoint(pathref, NULL, 219.900391, -76.799805, 205.965820, -93.433594, 186.911133, -101.386719);
            CGPathAddCurveToPoint(pathref, NULL, 175.245117, -106.255859, 162.558594, -107.394531, 150.066406, -106.213867);
            CGPathAddCurveToPoint(pathref, NULL, 135.995117, -104.884766, 123.609863, -97.551758, 109.968262, -94.491211);
            CGPathAddCurveToPoint(pathref, NULL, 97.345215, -91.660156, 83.046875, -93.971680, 71.679199, -100.070312);
            CGPathAddCurveToPoint(pathref, NULL, 62.520996, -104.984375, 54.927734, -114.892578, 43.982910, -115.743164);
            CGPathAddCurveToPoint(pathref, NULL, 34.631348, -116.470703, 31.014648, -108.370117, 29.044434, -100.593750);
            CGPathAddCurveToPoint(pathref, NULL, 26.512695, -90.601562, 26.792480, -79.541016, 28.229492, -69.401367);
            CGPathAddCurveToPoint(pathref, NULL, 29.702637, -59.006348, 35.602539, -48.766113, 41.996094, -40.611328);
            CGPathAddCurveToPoint(pathref, NULL, 48.592773, -32.197266, 58.587402, -28.172852, 69.015137, -26.786133);
            CGPathAddCurveToPoint(pathref, NULL, 81.353027, -25.145020, 93.939941, -27.268066, 105.785645, -30.700195);
            CGPathAddCurveToPoint(pathref, NULL, 118.253418, -34.312988, 129.826172, -41.744141, 142.885742, -43.132812);
            CGPathAddCurveToPoint(pathref, NULL, 154.977539, -44.418945, 167.069336, -42.405762, 178.237305, -37.665039);
            CGPathAddCurveToPoint(pathref, NULL, 182.940430, -35.668945, 187.428711, -33.298828, 191.822266, -30.695801);
            CGPathAddCurveToPoint(pathref, NULL, 196.749023, -27.775879, 200.094727, -22.825195, 205.747070, -21.149414);
            CGPathAddCurveToPoint(pathref, NULL, 224.593750, -16.943848, 224.889648, -44.313477, 223.049805, -56.293457);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            CGContextSetBlendMode(context, kCGBlendModeNormal);
            CGContextAddPath(context, pathref);
            CGContextSetRGBFillColor(context, red, green, blue, alpha);
            CGContextFillPath(context);
            
            CGPathRelease(pathref);
            
        }
        // end compound path <Compound Path>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
    // end layer emptywave
    
#pragma mark - Layer: linedwave
    if (type == 2)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin compound path <Compound Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 227.638672, -22.570312);
            CGPathAddCurveToPoint(pathref, NULL, 222.857422, -13.781738, 213.790039, -10.534668, 204.377930, -12.276855);
            CGPathAddCurveToPoint(pathref, NULL, 204.050781, -12.303223, 203.708984, -12.365723, 203.354492, -12.470703);
            CGPathAddCurveToPoint(pathref, NULL, 202.957031, -12.559570, 202.603516, -12.687500, 202.284180, -12.843262);
            CGPathAddCurveToPoint(pathref, NULL, 197.326172, -14.590332, 193.648438, -17.799805, 189.653320, -21.231934);
            CGPathAddCurveToPoint(pathref, NULL, 185.169922, -25.083984, 178.856445, -27.792969, 173.421875, -29.983887);
            CGPathAddCurveToPoint(pathref, NULL, 160.253906, -35.292480, 146.034180, -36.033691, 132.621094, -31.314453);
            CGPathAddCurveToPoint(pathref, NULL, 119.108887, -26.560059, 106.710449, -20.733398, 92.406250, -18.480957);
            CGPathAddCurveToPoint(pathref, NULL, 79.752441, -16.487793, 66.584961, -16.774414, 54.444336, -21.151367);
            CGPathAddCurveToPoint(pathref, NULL, 33.968750, -28.533203, 21.271973, -51.384277, 18.886719, -72.133789);
            CGPathAddCurveToPoint(pathref, NULL, 17.050781, -88.104492, 17.119141, -119.264648, 37.355469, -124.149414);
            CGPathAddCurveToPoint(pathref, NULL, 48.430664, -126.823242, 58.111328, -120.758789, 66.581055, -114.432617);
            CGPathAddCurveToPoint(pathref, NULL, 77.274902, -106.444336, 88.558594, -101.693359, 102.228516, -102.396484);
            CGPathAddCurveToPoint(pathref, NULL, 116.109863, -103.111328, 128.737305, -111.351562, 142.230469, -114.115234);
            CGPathAddCurveToPoint(pathref, NULL, 154.634766, -116.655273, 167.792969, -116.126953, 180.049805, -113.109375);
            CGPathAddCurveToPoint(pathref, NULL, 200.451172, -108.086914, 218.861328, -93.688477, 227.247070, -74.254883);
            CGPathAddCurveToPoint(pathref, NULL, 233.897461, -58.843750, 235.909180, -37.769043, 227.638672, -22.570312);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 94.000000, -27.850586);
            CGPathAddCurveToPoint(pathref, NULL, 94.000000, -27.850586, 94.000000, -93.514648, 94.000000, -93.514648);
            CGPathAddCurveToPoint(pathref, NULL, 87.796875, -94.048828, 81.638184, -95.581055, 76.000000, -97.995117);
            CGPathAddCurveToPoint(pathref, NULL, 76.000000, -97.995117, 76.000000, -26.243652, 76.000000, -26.243652);
            CGPathAddCurveToPoint(pathref, NULL, 82.023438, -26.092285, 88.060547, -26.724609, 94.000000, -27.850586);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 29.044434, -100.593750);
            CGPathAddCurveToPoint(pathref, NULL, 26.512695, -90.601562, 26.792480, -79.541016, 28.229492, -69.401367);
            CGPathAddCurveToPoint(pathref, NULL, 29.547363, -60.100586, 34.411621, -50.928711, 40.000000, -43.258789);
            CGPathAddCurveToPoint(pathref, NULL, 40.000000, -43.258789, 40.000000, -115.446289, 40.000000, -115.446289);
            CGPathAddCurveToPoint(pathref, NULL, 33.550781, -113.912109, 30.705078, -107.148438, 29.044434, -100.593750);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 49.000000, -114.673828);
            CGPathAddCurveToPoint(pathref, NULL, 49.000000, -114.673828, 49.000000, -34.018555, 49.000000, -34.018555);
            CGPathAddCurveToPoint(pathref, NULL, 54.269531, -30.343262, 60.511719, -28.176270, 67.000000, -27.089355);
            CGPathAddCurveToPoint(pathref, NULL, 67.000000, -27.089355, 67.000000, -103.032227, 67.000000, -103.032227);
            CGPathAddCurveToPoint(pathref, NULL, 61.172852, -107.174805, 55.648926, -112.417969, 49.000000, -114.673828);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 103.000000, -93.458984);
            CGPathAddCurveToPoint(pathref, NULL, 103.000000, -93.458984, 103.000000, -29.925781, 103.000000, -29.925781);
            CGPathAddCurveToPoint(pathref, NULL, 103.932129, -30.176270, 104.861816, -30.432617, 105.785645, -30.700195);
            CGPathAddCurveToPoint(pathref, NULL, 110.954102, -32.197754, 115.969238, -34.351074, 121.000000, -36.458984);
            CGPathAddCurveToPoint(pathref, NULL, 121.000000, -36.458984, 121.000000, -97.776367, 121.000000, -97.776367);
            CGPathAddCurveToPoint(pathref, NULL, 117.376465, -96.501953, 113.720703, -95.333008, 109.968262, -94.491211);
            CGPathAddCurveToPoint(pathref, NULL, 107.691406, -93.980469, 105.358887, -93.642578, 103.000000, -93.458984);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 130.000000, -101.052734);
            CGPathAddCurveToPoint(pathref, NULL, 130.000000, -101.052734, 130.000000, -40.004883, 130.000000, -40.004883);
            CGPathAddCurveToPoint(pathref, NULL, 134.186523, -41.484375, 138.449219, -42.661133, 142.885742, -43.132812);
            CGPathAddCurveToPoint(pathref, NULL, 144.591797, -43.314453, 146.296875, -43.422852, 148.000000, -43.474609);
            CGPathAddCurveToPoint(pathref, NULL, 148.000000, -43.474609, 148.000000, -105.963867, 148.000000, -105.963867);
            CGPathAddCurveToPoint(pathref, NULL, 141.780273, -105.116211, 135.866211, -103.179688, 130.000000, -101.052734);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 157.000000, -106.620117);
            CGPathAddCurveToPoint(pathref, NULL, 157.000000, -106.620117, 157.000000, -43.157227, 157.000000, -43.157227);
            CGPathAddCurveToPoint(pathref, NULL, 163.137695, -42.538574, 169.177734, -41.107422, 175.000000, -38.943848);
            CGPathAddCurveToPoint(pathref, NULL, 175.000000, -38.943848, 175.000000, -105.045898, 175.000000, -105.045898);
            CGPathAddCurveToPoint(pathref, NULL, 169.097656, -106.277344, 163.052734, -106.753906, 157.000000, -106.620117);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 184.000000, -102.507812);
            CGPathAddCurveToPoint(pathref, NULL, 184.000000, -102.507812, 184.000000, -34.975098, 184.000000, -34.975098);
            CGPathAddCurveToPoint(pathref, NULL, 186.653320, -33.642090, 189.257812, -32.215332, 191.822266, -30.695801);
            CGPathAddCurveToPoint(pathref, NULL, 195.558594, -28.481445, 198.386719, -25.102539, 202.000000, -22.866211);
            CGPathAddCurveToPoint(pathref, NULL, 202.000000, -22.866211, 202.000000, -92.435547, 202.000000, -92.435547);
            CGPathAddCurveToPoint(pathref, NULL, 197.487305, -96.064453, 192.415039, -99.089844, 186.911133, -101.386719);
            CGPathAddCurveToPoint(pathref, NULL, 185.948242, -101.789062, 184.976562, -102.156250, 184.000000, -102.507812);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 223.049805, -56.293457);
            CGPathAddCurveToPoint(pathref, NULL, 221.479492, -66.516113, 217.228516, -75.775391, 211.000000, -83.477539);
            CGPathAddCurveToPoint(pathref, NULL, 211.000000, -83.477539, 211.000000, -20.821289, 211.000000, -20.821289);
            CGPathAddCurveToPoint(pathref, NULL, 224.622070, -22.449219, 224.699219, -45.550781, 223.049805, -56.293457);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            CGContextSetBlendMode(context, kCGBlendModeNormal);
            CGContextAddPath(context, pathref);
            CGContextSetRGBFillColor(context, red, green, blue, alpha);
            CGContextFillPath(context);
            
            CGPathRelease(pathref);
            
        }
        // end compound path <Compound Path>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
    // end layer linedwave
    
#pragma mark - Layer: fullwave
    if (type == 3)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin path: <Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            CGPathMoveToPoint    (pathref, NULL, 227.638672, -22.570312);
            CGPathAddCurveToPoint(pathref, NULL, 222.857422, -13.781738, 213.790039, -10.534668, 204.377930, -12.276855);
            CGPathAddCurveToPoint(pathref, NULL, 204.050781, -12.303223, 203.708984, -12.365723, 203.354492, -12.470703);
            CGPathAddCurveToPoint(pathref, NULL, 202.957031, -12.559570, 202.603516, -12.687500, 202.284180, -12.843262);
            CGPathAddCurveToPoint(pathref, NULL, 197.326172, -14.590332, 193.648438, -17.799805, 189.653320, -21.231934);
            CGPathAddCurveToPoint(pathref, NULL, 185.169922, -25.083984, 178.856445, -27.792969, 173.421875, -29.983887);
            CGPathAddCurveToPoint(pathref, NULL, 160.253906, -35.292480, 146.034180, -36.033691, 132.621094, -31.314453);
            CGPathAddCurveToPoint(pathref, NULL, 119.108887, -26.560059, 106.710449, -20.733398, 92.406250, -18.480957);
            CGPathAddCurveToPoint(pathref, NULL, 79.752441, -16.487793, 66.584961, -16.774414, 54.444336, -21.151367);
            CGPathAddCurveToPoint(pathref, NULL, 33.968750, -28.533203, 21.271973, -51.384277, 18.886719, -72.133789);
            CGPathAddCurveToPoint(pathref, NULL, 17.050781, -88.104492, 17.119141, -119.264648, 37.355469, -124.149414);
            CGPathAddCurveToPoint(pathref, NULL, 48.430664, -126.823242, 58.111328, -120.758789, 66.581055, -114.432617);
            CGPathAddCurveToPoint(pathref, NULL, 77.274902, -106.444336, 88.558594, -101.693359, 102.228516, -102.396484);
            CGPathAddCurveToPoint(pathref, NULL, 116.109863, -103.111328, 128.737305, -111.351562, 142.230469, -114.115234);
            CGPathAddCurveToPoint(pathref, NULL, 154.634766, -116.655273, 167.792969, -116.126953, 180.049805, -113.109375);
            CGPathAddCurveToPoint(pathref, NULL, 200.451172, -108.086914, 218.861328, -93.688477, 227.247070, -74.254883);
            CGPathAddCurveToPoint(pathref, NULL, 233.897461, -58.843750, 235.909180, -37.769043, 227.638672, -22.570312);
            CGPathCloseSubpath(pathref);
            
            CGContextSetBlendMode(context, kCGBlendModeNormal);
            CGContextAddPath(context, pathref);
            CGContextSetRGBFillColor(context, red, green, blue, alpha);
            CGContextFillPath(context);
            
            CGPathRelease(pathref);
            
        }
        // end path: <Path>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
    // end layer fullwave
    
    
    // End Drawing
    
}
