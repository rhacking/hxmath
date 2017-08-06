import hxmath.math.Vector2;
import hxmath.math.Vector3;
import hxmath.math.Vector4;
import hxmath.math.Quaternion;

class Main {
	public static function main() {
		var v = new Vector2(1, 0);
		var w = new kha.math.FastVector3(0, 1);
		trace(v + w);
		v.rotate(Math.PI/2, new Vector2(0, 0));
		trace(v);

		var v3:Vector3 = [1, 0.0, 0.0];
		var w3:Vector3 = new kha.math.FastVector3(1, 0, 0);
		trace(v3 * w3);
		trace(-v3 * w3);
		trace(v3.rotate(90, new Vector3(0, 1, 0)));

		var v4:Vector4 = [1, 2, 3, 4];
		var w4:Vector4 = [4, 3, 2, 1];
		trace(v4+w4);

		var q:Quaternion = kha.math.Quaternion.fromAxisAngle(cast new Vector3(0, 1, 0), Math.PI/2);
		trace(q.rotate(new Vector3(1, 0, 0)));
	}
}