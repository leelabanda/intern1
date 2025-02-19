package junit;

import static org.junit.Assert.*;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class Hi {
	private Junit junit;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		junit = new Junit();
	}

	@After
	public void tearDown() throws Exception {
		junit = null;
	}

	@Test
	public void test() {
		int input = 3;
        int expectedOutput = 9;
        int actualOutput = junit.square(input);
        assertEquals(expectedOutput, actualOutput);
	}

}
