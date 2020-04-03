package jsp05;

import java.util.ArrayList;

public class Test {
	private ArrayList<TestDTO> arr = new ArrayList<TestDTO>();
	public void insert() {
		TestDTO d1 = new TestDTO();
		TestDTO d2 = new TestDTO();
		TestDTO d3 = new TestDTO();
		
		d1.setId("d1");		d2.setId("d2");		d3.setId("d3");
		d1.setPwd("11");	d2.setPwd("22");	d3.setPwd("33");
		arr.add(d1);		arr.add(d2);		arr.add(d3);
	}
	
	public ArrayList<TestDTO> getArr(String id) {
		System.out.println("넘어온 id: " + id);
		return arr;
	}
}
