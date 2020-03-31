import java.util.HashMap;

public class Hashmap {
	public static void main(String[] args) {
		HashMap<String, Integer> h= new HashMap<String, Integer>();
		h.put("a", 10);
		h.put("b", 20);

		System.out.println(func(h)+"EA");
	}
	public static int func(HashMap<String, Integer> map) {
		return map.size();
	}
}

