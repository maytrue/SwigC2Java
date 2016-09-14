public class main {
	public static void main(String argv[]) {
		//System.loadLibrary("/Users/bobo/Documents/cpp/jni/example.so");
		System.load("/Users/bobo/Documents/cpp/jni/c/example.so");
		System.out.println(example.getMy_variable());
		System.out.println(example.fact(5));
		System.out.println(example.get_time());
	}

}
