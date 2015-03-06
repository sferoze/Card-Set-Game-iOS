// this method draws one diamond symbol, type and color can be set below
// preferably make the rectangle you draw this in have a width/height ratio of 1.85 to 1

- (void)drawRect:(CGRect)rect
{
    //place logic here to set color and type of a single diamond symbol:
    double red = 1.0;
    double green = 0.5;
    double blue = 0.2;
    double alpha = 1;
    
    int type = 2; //1 for empty, 2 for lined, 3 for full
    
    
    // no need to touch anything from here on, should size within rectangle and keep the correct ratio
    CGRect frame = self.frame;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextScaleCTM(context, frame.size.width / 250.000000 , (frame.size.width / 250.000000));
    CGContextTranslateCTM(context, -17, 208);
    // Begin Drawing
      
#pragma mark - Layer: diamondempty
    if (type == 1)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin group <Group>
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin path: <Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            CGPathMoveToPoint    (pathref, NULL, 144.332031, -201.385742);
            CGPathAddCurveToPoint(pathref, NULL, 181.291016, -182.765625, 218.250977, -164.146484, 255.210938, -145.527344);
            CGPathAddCurveToPoint(pathref, NULL, 258.148438, -144.046875, 258.145508, -139.236328, 255.210938, -137.755859);
            CGPathAddCurveToPoint(pathref, NULL, 234.785156, -127.451172, 214.358398, -117.145996, 193.932617, -106.840820);
            CGPathAddCurveToPoint(pathref, NULL, 181.130859, -100.382324, 168.329102, -93.923828, 155.527344, -87.465332);
            CGPathAddCurveToPoint(pathref, NULL, 151.124023, -85.243652, 143.908203, -79.620117, 138.922363, -82.131836);
            CGPathAddCurveToPoint(pathref, NULL, 102.211426, -100.625977, 65.500488, -119.120117, 28.789062, -137.614258);
            CGPathAddCurveToPoint(pathref, NULL, 25.852051, -139.094238, 25.854492, -143.905273, 28.789062, -145.385742);
            CGPathAddCurveToPoint(pathref, NULL, 65.789062, -164.052734, 102.789062, -182.718750, 139.789551, -201.385742);
            CGPathAddCurveToPoint(pathref, NULL, 144.957031, -203.992188, 149.348633, -196.228516, 144.166016, -193.614258);
            CGPathAddCurveToPoint(pathref, NULL, 107.166016, -174.947266, 70.000000, -156.281250, 33.000000, -137.614258);
            CGPathAddCurveToPoint(pathref, NULL, 33.000000, -140.204590, 33.000000, -142.795410, 33.000000, -145.385742);
            CGPathAddCurveToPoint(pathref, NULL, 70.000000, -126.766113, 107.250977, -108.000000, 144.210938, -90.000000);
            CGPathAddCurveToPoint(pathref, NULL, 142.696289, -90.000000, 141.182617, -90.000000, 139.668457, -90.000000);
            CGPathAddCurveToPoint(pathref, NULL, 176.667969, -108.000000, 214.000000, -126.860352, 251.000000, -145.527344);
            CGPathAddCurveToPoint(pathref, NULL, 251.000000, -142.937012, 251.000000, -140.346191, 251.000000, -137.755859);
            CGPathAddCurveToPoint(pathref, NULL, 214.000000, -156.375000, 176.915039, -174.995117, 139.955078, -193.614258);
            CGPathAddCurveToPoint(pathref, NULL, 134.770508, -196.226562, 139.163086, -203.989258, 144.332031, -201.385742);
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
        // end group <Group>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
    // end layer diamondempty
    
#pragma mark - Layer: lines
    if (type == 2)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin compound path <Compound Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 255.210938, -137.755859);
            CGPathAddCurveToPoint(pathref, NULL, 234.785156, -127.451172, 214.358398, -117.146484, 193.932617, -106.840820);
            CGPathAddCurveToPoint(pathref, NULL, 181.130859, -100.382324, 168.329102, -93.923828, 155.527344, -87.465332);
            CGPathAddCurveToPoint(pathref, NULL, 151.124023, -85.243652, 143.908203, -79.620117, 138.921875, -82.131836);
            CGPathAddCurveToPoint(pathref, NULL, 102.211426, -100.625977, 65.500488, -119.120117, 28.789062, -137.614258);
            CGPathAddCurveToPoint(pathref, NULL, 25.852051, -139.093750, 25.854492, -143.905273, 28.789062, -145.385742);
            CGPathAddCurveToPoint(pathref, NULL, 65.789062, -164.052734, 102.789062, -182.718750, 139.789062, -201.385742);
            CGPathAddCurveToPoint(pathref, NULL, 140.600098, -201.794922, 141.391602, -201.948242, 142.130371, -201.906250);
            CGPathAddCurveToPoint(pathref, NULL, 142.829102, -201.922852, 143.571289, -201.768555, 144.332031, -201.385742);
            CGPathAddCurveToPoint(pathref, NULL, 181.291016, -182.765625, 218.250977, -164.146484, 255.210938, -145.527344);
            CGPathAddCurveToPoint(pathref, NULL, 258.148438, -144.046875, 258.145508, -139.236328, 255.210938, -137.755859);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 200.000000, -119.853027);
            CGPathAddCurveToPoint(pathref, NULL, 206.001953, -122.860840, 212.001953, -125.874512, 218.000000, -128.892578);
            CGPathAddCurveToPoint(pathref, NULL, 218.000000, -128.892578, 218.000000, -154.351562, 218.000000, -154.351562);
            CGPathAddCurveToPoint(pathref, NULL, 211.999023, -157.368164, 206.000977, -160.385742, 200.000000, -163.403320);
            CGPathAddCurveToPoint(pathref, NULL, 200.000000, -163.403320, 200.000000, -119.853027, 200.000000, -119.853027);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 191.000000, -167.930664);
            CGPathAddCurveToPoint(pathref, NULL, 184.996094, -170.949219, 179.001953, -173.968750, 173.000000, -176.987305);
            CGPathAddCurveToPoint(pathref, NULL, 173.000000, -176.987305, 173.000000, -106.389648, 173.000000, -106.389648);
            CGPathAddCurveToPoint(pathref, NULL, 178.998047, -109.364258, 184.998047, -112.351562, 191.000000, -115.350098);
            CGPathAddCurveToPoint(pathref, NULL, 191.000000, -115.350098, 191.000000, -167.930664, 191.000000, -167.930664);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 227.000000, -133.423828);
            CGPathAddCurveToPoint(pathref, NULL, 232.433594, -136.161621, 237.862305, -138.898926, 243.285156, -141.635254);
            CGPathAddCurveToPoint(pathref, NULL, 237.859375, -144.365234, 232.428711, -147.095703, 227.000000, -149.825195);
            CGPathAddCurveToPoint(pathref, NULL, 227.000000, -149.825195, 227.000000, -133.423828, 227.000000, -133.423828);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 164.000000, -101.934570);
            CGPathAddCurveToPoint(pathref, NULL, 164.000000, -101.934570, 164.000000, -181.515625, 164.000000, -181.515625);
            CGPathAddCurveToPoint(pathref, NULL, 158.000000, -184.535156, 151.995117, -187.553711, 146.000000, -190.572266);
            CGPathAddCurveToPoint(pathref, NULL, 146.000000, -190.572266, 146.000000, -93.094727, 146.000000, -93.094727);
            CGPathAddCurveToPoint(pathref, NULL, 151.994141, -96.022949, 157.994141, -98.968750, 164.000000, -101.934570);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 65.000000, -129.293945);
            CGPathAddCurveToPoint(pathref, NULL, 70.998535, -126.282227, 76.999023, -123.274902, 83.000000, -120.272461);
            CGPathAddCurveToPoint(pathref, NULL, 83.000000, -120.272461, 83.000000, -162.803711, 83.000000, -162.803711);
            CGPathAddCurveToPoint(pathref, NULL, 76.999023, -159.782227, 70.998535, -156.761719, 65.000000, -153.741211);
            CGPathAddCurveToPoint(pathref, NULL, 65.000000, -153.741211, 65.000000, -129.293945, 65.000000, -129.293945);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 56.000000, -149.207031);
            CGPathAddCurveToPoint(pathref, NULL, 50.902344, -146.638672, 45.808594, -144.071289, 40.715332, -141.502930);
            CGPathAddCurveToPoint(pathref, NULL, 45.807129, -138.940918, 50.901855, -136.378418, 56.000000, -133.815430);
            CGPathAddCurveToPoint(pathref, NULL, 56.000000, -133.815430, 56.000000, -149.207031, 56.000000, -149.207031);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 92.000000, -115.776367);
            CGPathAddCurveToPoint(pathref, NULL, 98.001953, -112.781250, 104.001953, -109.797852, 110.000000, -106.824707);
            CGPathAddCurveToPoint(pathref, NULL, 110.000000, -106.824707, 110.000000, -176.396484, 110.000000, -176.396484);
            CGPathAddCurveToPoint(pathref, NULL, 104.000977, -173.375977, 98.000977, -170.355469, 92.000000, -167.334961);
            CGPathAddCurveToPoint(pathref, NULL, 92.000000, -167.334961, 92.000000, -115.776367, 92.000000, -115.776367);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 119.000000, -102.370605);
            CGPathAddCurveToPoint(pathref, NULL, 125.005859, -99.405273, 131.005371, -96.458496, 137.000000, -93.526367);
            CGPathAddCurveToPoint(pathref, NULL, 137.000000, -93.526367, 137.000000, -190.001953, 137.000000, -190.001953);
            CGPathAddCurveToPoint(pathref, NULL, 131.002441, -186.978516, 125.003906, -183.954102, 119.000000, -180.929688);
            CGPathAddCurveToPoint(pathref, NULL, 119.000000, -180.929688, 119.000000, -102.370605, 119.000000, -102.370605);
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
    // end layer lines
    
#pragma mark - Layer: diamondfilled
    if (type == 3)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin group <Group>
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin path: <Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            CGPathMoveToPoint    (pathref, NULL, 142.060547, -197.500000);
            CGPathAddCurveToPoint(pathref, NULL, 142.060547, -197.500000, 252.939453, -141.641602, 252.939453, -141.641602);
            CGPathAddCurveToPoint(pathref, NULL, 252.939453, -141.641602, 141.939453, -85.641602, 141.939453, -85.641602);
            CGPathAddCurveToPoint(pathref, NULL, 141.939453, -85.641602, 31.060547, -141.500000, 31.060547, -141.500000);
            CGPathAddCurveToPoint(pathref, NULL, 31.060547, -141.500000, 142.060547, -197.500000, 142.060547, -197.500000);
            CGPathCloseSubpath(pathref);
            
            CGContextSetBlendMode(context, kCGBlendModeNormal);
            CGContextAddPath(context, pathref);
            CGContextSetRGBFillColor(context, red, green, blue, alpha);
            CGContextFillPath(context);
            
            CGPathRelease(pathref);
            
        }
        // end path: <Path>
        
        // begin group <Group>
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin path: <Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            CGPathMoveToPoint    (pathref, NULL, 144.332031, -201.385742);
            CGPathAddCurveToPoint(pathref, NULL, 181.291016, -182.765625, 218.250977, -164.146484, 255.210938, -145.527344);
            CGPathAddCurveToPoint(pathref, NULL, 258.148438, -144.046875, 258.145508, -139.236328, 255.210938, -137.755859);
            CGPathAddCurveToPoint(pathref, NULL, 234.785156, -127.451172, 214.358398, -117.145996, 193.932617, -106.840820);
            CGPathAddCurveToPoint(pathref, NULL, 181.130859, -100.382324, 168.329102, -93.923828, 155.527344, -87.465332);
            CGPathAddCurveToPoint(pathref, NULL, 151.124023, -85.243652, 143.908203, -79.620117, 138.922363, -82.131836);
            CGPathAddCurveToPoint(pathref, NULL, 102.211426, -100.625977, 65.500488, -119.120117, 28.789062, -137.614258);
            CGPathAddCurveToPoint(pathref, NULL, 25.852051, -139.094238, 25.854492, -143.905273, 28.789062, -145.385742);
            CGPathAddCurveToPoint(pathref, NULL, 65.789062, -164.052734, 102.789062, -182.718750, 139.789551, -201.385742);
            CGPathAddCurveToPoint(pathref, NULL, 144.957031, -203.992188, 149.348633, -196.228516, 144.166016, -193.614258);
            CGPathAddCurveToPoint(pathref, NULL, 107.166016, -174.947266, 70.000000, -156.281250, 33.000000, -137.614258);
            CGPathAddCurveToPoint(pathref, NULL, 33.000000, -140.204590, 33.000000, -142.795410, 33.000000, -145.385742);
            CGPathAddCurveToPoint(pathref, NULL, 70.000000, -126.766113, 107.250977, -108.000000, 144.210938, -90.000000);
            CGPathAddCurveToPoint(pathref, NULL, 142.696289, -90.000000, 141.182617, -90.000000, 139.668457, -90.000000);
            CGPathAddCurveToPoint(pathref, NULL, 176.667969, -108.000000, 214.000000, -126.860352, 251.000000, -145.527344);
            CGPathAddCurveToPoint(pathref, NULL, 251.000000, -142.937012, 251.000000, -140.346191, 251.000000, -137.755859);
            CGPathAddCurveToPoint(pathref, NULL, 214.000000, -156.375000, 176.915039, -174.995117, 139.955078, -193.614258);
            CGPathAddCurveToPoint(pathref, NULL, 134.770508, -196.226562, 139.163086, -203.989258, 144.332031, -201.385742);
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
        // end group <Group>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
        // end group <Group>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
    // end layer diamondfilled
  
    // End Drawing
    
}
