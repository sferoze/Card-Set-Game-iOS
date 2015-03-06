// this method draws one pill symbol, type and color can be set below
// preferably make the rectangle you draw this in have a width/height ratio of 1.85 to 1

- (void)drawRect:(CGRect)rect
{
    //place logic here to set color and type of a single pill symbol:
    double red = 0;
    double green = 0.6;
    double blue = 0.25;
    double alpha = 1;
    
    int type = 3; //1 for empty, 2 for lined, 3 for full
    
    
    // no need to touch anything from here on, should size within rectangle and keep the correct ratio
    CGRect frame = self.frame;
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextScaleCTM(context, frame.size.width / 250.000000 , (frame.size.width / 250.000000));
    CGContextTranslateCTM(context, 0, 135);
    
    // Begin Drawing
    
#pragma mark - Layer: pillempty
    if (type == 1)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin compound path <Compound Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 218.457031, -26.680176);
            CGPathAddCurveToPoint(pathref, NULL, 207.073242, -16.416992, 192.815430, -13.000000, 177.886719, -13.000000);
            CGPathAddCurveToPoint(pathref, NULL, 165.556641, -13.000000, 153.225586, -13.000000, 140.895508, -13.000000);
            CGPathAddCurveToPoint(pathref, NULL, 116.345215, -13.000000, 91.795410, -13.000000, 67.245117, -13.000000);
            CGPathAddCurveToPoint(pathref, NULL, 46.138184, -13.000000, 26.736328, -25.287109, 17.644043, -44.276855);
            CGPathAddCurveToPoint(pathref, NULL, 7.794922, -64.848633, 12.451172, -89.320312, 27.982910, -105.676758);
            CGPathAddCurveToPoint(pathref, NULL, 39.114258, -117.399414, 54.475098, -122.000000, 70.255859, -122.000000);
            CGPathAddCurveToPoint(pathref, NULL, 82.013184, -122.000000, 93.770996, -122.000000, 105.528320, -122.000000);
            CGPathAddCurveToPoint(pathref, NULL, 130.572266, -122.000000, 155.615234, -122.000000, 180.658203, -122.000000);
            CGPathAddCurveToPoint(pathref, NULL, 181.281250, -122.016602, 181.556641, -122.023438, 182.109375, -122.015625);
            CGPathAddCurveToPoint(pathref, NULL, 204.887695, -121.703125, 224.456055, -108.250000, 233.141602, -87.327148);
            CGPathAddCurveToPoint(pathref, NULL, 241.838867, -66.376953, 235.013672, -41.606934, 218.457031, -26.680176);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 224.463867, -84.992188);
            CGPathAddCurveToPoint(pathref, NULL, 218.005859, -101.797852, 201.048828, -112.287109, 183.468750, -113.015625);
            CGPathAddCurveToPoint(pathref, NULL, 182.875000, -113.046875, 182.527344, -113.000000, 182.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 159.000000, -113.000000, 134.908203, -113.000000, 111.291016, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 98.427246, -113.000000, 85.563477, -113.000000, 72.700195, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 58.147949, -113.000000, 45.034180, -109.943359, 34.346680, -99.255859);
            CGPathAddCurveToPoint(pathref, NULL, 17.704590, -82.613281, 17.483887, -55.238281, 32.571289, -37.606445);
            CGPathAddCurveToPoint(pathref, NULL, 42.715332, -25.750000, 56.826172, -22.000000, 71.814941, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 100.282715, -22.000000, 128.750977, -22.000000, 157.218750, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 164.910156, -22.000000, 172.600586, -22.000000, 180.291992, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 193.516602, -22.000000, 205.503906, -26.311035, 214.936523, -35.744141);
            CGPathAddCurveToPoint(pathref, NULL, 227.864258, -48.672363, 230.901367, -68.235352, 224.463867, -84.992188);
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
    // end layer pillempty
    
#pragma mark - Layer: pilllined
    if (type == 2)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin compound path <Compound Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 218.457031, -26.680176);
            CGPathAddCurveToPoint(pathref, NULL, 207.073242, -16.416992, 192.815430, -13.000000, 177.886719, -13.000000);
            CGPathAddCurveToPoint(pathref, NULL, 165.556641, -13.000000, 153.225586, -13.000000, 140.895508, -13.000000);
            CGPathAddCurveToPoint(pathref, NULL, 116.345215, -13.000000, 91.795410, -13.000000, 67.245117, -13.000000);
            CGPathAddCurveToPoint(pathref, NULL, 46.138184, -13.000000, 26.736328, -25.287109, 17.644043, -44.276855);
            CGPathAddCurveToPoint(pathref, NULL, 7.794922, -64.848633, 12.451172, -89.320312, 27.982910, -105.676758);
            CGPathAddCurveToPoint(pathref, NULL, 39.114258, -117.399414, 54.475098, -122.000000, 70.255859, -122.000000);
            CGPathAddCurveToPoint(pathref, NULL, 82.013184, -122.000000, 93.770996, -122.000000, 105.528320, -122.000000);
            CGPathAddCurveToPoint(pathref, NULL, 130.572266, -122.000000, 155.615234, -122.000000, 180.658203, -122.000000);
            CGPathAddCurveToPoint(pathref, NULL, 181.478516, -122.056641, 181.833984, -122.010742, 182.386719, -122.002930);
            CGPathAddCurveToPoint(pathref, NULL, 205.165039, -121.690430, 224.456055, -108.250000, 233.141602, -87.327148);
            CGPathAddCurveToPoint(pathref, NULL, 241.838867, -66.376953, 235.013672, -41.606934, 218.457031, -26.680176);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 183.424805, -113.216797);
            CGPathAddCurveToPoint(pathref, NULL, 183.284180, -113.175781, 183.015625, -113.328125, 183.000000, -113.095703);
            CGPathAddCurveToPoint(pathref, NULL, 183.000000, -113.095703, 183.000000, -22.065918, 183.000000, -22.065918);
            CGPathAddCurveToPoint(pathref, NULL, 189.367188, -22.356934, 195.417969, -23.687988, 201.000000, -26.153320);
            CGPathAddCurveToPoint(pathref, NULL, 201.000000, -26.153320, 201.000000, -109.061523, 201.000000, -109.061523);
            CGPathAddCurveToPoint(pathref, NULL, 195.482422, -111.527344, 189.489258, -112.965820, 183.424805, -113.216797);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 174.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 174.000000, -22.000000, 174.000000, -113.000000, 174.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 168.049805, -113.000000, 162.042969, -113.000000, 156.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 156.000000, -113.000000, 156.000000, -22.000000, 156.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 156.406250, -22.000000, 156.812500, -22.000000, 157.218750, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 162.812500, -22.000000, 168.406250, -22.000000, 174.000000, -22.000000);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 147.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 147.000000, -22.000000, 147.000000, -113.000000, 147.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 141.011719, -113.000000, 135.002930, -113.000000, 129.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 129.000000, -113.000000, 129.000000, -22.000000, 129.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 135.000000, -22.000000, 141.000000, -22.000000, 147.000000, -22.000000);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 66.000000, -112.748047);
            CGPathAddCurveToPoint(pathref, NULL, 59.645020, -112.267578, 53.615234, -111.015625, 48.000000, -108.577148);
            CGPathAddCurveToPoint(pathref, NULL, 48.000000, -108.577148, 48.000000, -26.296875, 48.000000, -26.296875);
            CGPathAddCurveToPoint(pathref, NULL, 53.600098, -23.905273, 59.682129, -22.657715, 66.000000, -22.205566);
            CGPathAddCurveToPoint(pathref, NULL, 66.000000, -22.205566, 66.000000, -112.748047, 66.000000, -112.748047);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 75.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 81.000000, -22.000000, 87.000000, -22.000000, 93.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 93.000000, -22.000000, 93.000000, -113.000000, 93.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 87.000000, -113.000000, 81.000000, -113.000000, 75.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 75.000000, -113.000000, 75.000000, -22.000000, 75.000000, -22.000000);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 32.571289, -37.606445);
            CGPathAddCurveToPoint(pathref, NULL, 34.566895, -35.273926, 36.720703, -33.265625, 39.000000, -31.527832);
            CGPathAddCurveToPoint(pathref, NULL, 39.000000, -31.527832, 39.000000, -103.308594, 39.000000, -103.308594);
            CGPathAddCurveToPoint(pathref, NULL, 37.404297, -102.094727, 35.849121, -100.757812, 34.346680, -99.255859);
            CGPathAddCurveToPoint(pathref, NULL, 17.704590, -82.613281, 17.483887, -55.238281, 32.571289, -37.606445);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 102.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 102.000000, -113.000000, 102.000000, -22.000000, 102.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 108.000000, -22.000000, 114.000000, -22.000000, 120.000000, -22.000000);
            CGPathAddCurveToPoint(pathref, NULL, 120.000000, -22.000000, 120.000000, -113.000000, 120.000000, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 117.091797, -113.000000, 114.187500, -113.000000, 111.291016, -113.000000);
            CGPathAddCurveToPoint(pathref, NULL, 108.193848, -113.000000, 105.097168, -113.000000, 102.000000, -113.000000);
            CGPathCloseSubpath(pathref);
            // end subpath: <Path>
            
            // begin subpath: <Path>
            CGPathMoveToPoint    (pathref, NULL, 224.463867, -84.992188);
            CGPathAddCurveToPoint(pathref, NULL, 221.519531, -92.653320, 216.381836, -99.040039, 210.000000, -103.796875);
            CGPathAddCurveToPoint(pathref, NULL, 210.000000, -103.796875, 210.000000, -31.458008, 210.000000, -31.458008);
            CGPathAddCurveToPoint(pathref, NULL, 211.710938, -32.750977, 213.362305, -34.169922, 214.936523, -35.744141);
            CGPathAddCurveToPoint(pathref, NULL, 227.864258, -48.672363, 230.901367, -68.235352, 224.463867, -84.992188);
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
    // end layer pilllined
    
#pragma mark - Layer: pillfull
    if (type == 3)
    {
        CGContextSaveGState(context);
        CGContextBeginTransparencyLayer(context, NULL);
        
        // begin path: <Path>
        {
            CGMutablePathRef pathref;
            pathref = CGPathCreateMutable();
            
            CGPathMoveToPoint    (pathref, NULL, 182.142578, -118.500000);
            CGPathAddCurveToPoint(pathref, NULL, 209.882812, -118.500000, 232.371094, -96.241211, 232.371094, -68.500000);
            CGPathAddCurveToPoint(pathref, NULL, 232.371094, -40.758789, 209.882812, -18.500000, 182.142578, -18.500000);
            CGPathAddCurveToPoint(pathref, NULL, 182.142578, -18.500000, 67.142578, -18.500000, 67.142578, -18.500000);
            CGPathAddCurveToPoint(pathref, NULL, 39.400391, -18.500000, 16.912109, -40.758789, 16.912109, -68.500000);
            CGPathAddCurveToPoint(pathref, NULL, 16.912109, -96.241211, 39.400391, -118.500000, 67.142578, -118.500000);
            CGPathAddCurveToPoint(pathref, NULL, 67.142578, -118.500000, 182.142578, -118.500000, 182.142578, -118.500000);
            CGPathCloseSubpath(pathref);
            
            CGContextSetBlendMode(context, kCGBlendModeNormal);
            CGContextAddPath(context, pathref);
            CGContextSetRGBFillColor(context, red, green, blue, alpha);
            CGContextFillPath(context);
            CGContextAddPath(context, pathref);
            CGContextSetLineWidth(context, 7.000000);
            CGContextSetLineCap(context, kCGLineCapButt);
            CGContextSetLineJoin(context,  kCGLineJoinMiter);
            CGContextSetMiterLimit(context, 10.000000);
            CGContextSetRGBStrokeColor(context, red, green, blue, alpha);
            CGContextStrokePath(context);
            
            CGPathRelease(pathref);
            
        }
        // end path: <Path>
        
        CGContextEndTransparencyLayer(context);
        CGContextRestoreGState(context);
    }
    // end layer pillfull
    
    
    // End Drawing
    
}
