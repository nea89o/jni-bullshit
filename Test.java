public class Test {
	public static native void doSomething();

	static {
		System.loadLibrary("a");
	}
	public static void main(String[] args) {
		doSomething();	
	}
}
