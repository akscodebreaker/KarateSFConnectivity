package Karatefeatures;

import com.intuit.karate.junit5.Karate;



public class CommonCode {

//	@Karate.Test
//	 Karate runTest() {
//		return Karate.run("personTest","sample","loops").relativeTo(getClass());
//	}
	@Karate.Test
	 Karate runTest2() {
//		return Karate.run("sample","loops").tags("~@sam").relativeTo(getClass());
		return Karate.run("sample").tags("@sam,@sam2").relativeTo(getClass());
	}
	
	
} 
