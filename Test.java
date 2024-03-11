public class Test {
	public static native void doSomething();

	public static void main(String[] args) {
		if (args.length != 1) throw new RuntimeException("Use either both or onlya as argument");
		if (args[0].equals("both")) {
			System.loadLibrary("b");
			System.loadLibrary("a");
		} else if (args[0].equals("onlya")) {
			System.loadLibrary("a");
		} else {
			throw new RuntimeException("Use either both or onlya as argument");
		}
		doSomething();	
	}
}
