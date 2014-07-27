package hxmath;

typedef Vector4Shape =
{
    public var x:Float;
    public var y:Float;
    public var z:Float;
    public var w:Float;
}

@:forward(x, y, z, w)
abstract Vector4(Vector4Shape) from Vector4Shape to Vector4Shape
{
    public static var zero(get, never):Vector4;
    public static var xAxis(get, never):Vector4;
    public static var yAxis(get, never):Vector4;
    public static var zAxis(get, never):Vector4;
    public static var wAxis(get, never):Vector4;
    
    public var length(get, never):Float;
    public var lengthSq(get, never):Float;
    
    public function new(x:Float = 0.0, y:Float = 0.0, z:Float = 0.0, w:Float = 0.0)
    {
        this = {x: x, y: y, z: z, w: w};
    }
    
    @:op(A + B)
    public static inline function add(a:Vector4, b:Vector4):Vector4
    {
        return new Vector4(
            a.x + b.x,
            a.y + b.y,
            a.z + b.z,
            a.w + b.w);
    }
    
    @:op(A += B)
    public static inline function addWith(a:Vector4, b:Vector4):Vector4
    {
        a.x += b.x;
        a.y += b.y;
        a.z += b.z;
        a.w += b.w;
        return a;
    }
    
    @:op(A - B)
    public static inline function subtract(a:Vector4, b:Vector4):Vector4
    {
        return new Vector4(
            a.x - b.x,
            a.y - b.y,
            a.z - b.z,
            a.w - b.w);
    }
    
    @:op(A -= B)
    public static inline function subtractWith(a:Vector4, b:Vector4):Vector4
    {
        a.x -= b.x;
        a.y -= b.y;
        a.z -= b.z;
        a.w -= b.w;
        return a;
    }
    
    @:op(A * B)
    public static inline function dot(a:Vector4, b:Vector4):Float
    {
        return
            a.x * b.x +
            a.y * b.y +
            a.z * b.z +
            a.w * b.w;
    }
    
    @:op(A * B)
    public static inline function scalarMultiply(s:Float, a:Vector4):Vector4
    {
        return new Vector4(
            s * a.x,
            s * a.y,
            s * a.z,
            s * a.w);
    }
    
    @:op(-A)
    public static inline function negate(a:Vector4):Vector4
    {
        return new Vector4(
            -a.x,
            -a.y,
            -a.z,
            -a.w);
    }
    
    @:op(A == B)
    public static inline function equals(a:Vector4, b:Vector4):Bool
    {
        return
            a.x == b.x &&
            a.y == b.y &&
            a.z == b.z &&
            a.w == b.w;
    }
    
    @:op(A != B)
    public static inline function notEquals(a:Vector4, b:Vector4):Bool
    {
        return !(a == b);
    }
    
    public static inline function lerp(a:Vector4, b:Vector4, t:Float):Vector4
    {
        return t*a + (1.0 - t)*b;
    }
    
    public inline function clone():Vector4
    {
        var self:Vector4 = this;
        return new Vector4(self.x, self.y, self.z, self.w);
    }
    
    private inline function get_length():Float
    {
        var self:Vector4 = this;
        return Math.sqrt(
            self.x * self.x +
            self.y * self.y +
            self.z * self.z +
            self.w * self.w);
    }
    
    private inline function get_lengthSq():Float
    {
        var self:Vector4 = this;
        return
            self.x * self.x +
            self.y * self.y +
            self.z * self.z +
            self.w * self.w;
    }
    
    private static inline function get_zero():Vector4
    {
        return new Vector4(0.0, 0.0, 0.0, 0.0);
    }
    
    private static inline function get_xAxis():Vector4
    {
        return new Vector4(1.0, 0.0, 0.0, 0.0);
    }
    
    private static inline function get_yAxis():Vector4
    {
        return new Vector4(0.0, 1.0, 0.0, 0.0);
    }
    
    private static inline function get_zAxis():Vector4
    {
        return new Vector4(0.0, 0.0, 1.0, 0.0);
    }
    
    private static inline function get_wAxis():Vector4
    {
        return new Vector4(0.0, 0.0, 0.0, 1.0);
    }
}
