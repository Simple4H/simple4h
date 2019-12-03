package com.simple4h;

import com.simple4h.utils.DateUtils;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;

@SpringBootTest
class Simple4hProductApplicationTests {

	@Test
	void contextLoads() {
		Date date = new Date();
		System.out.println(DateUtils.formatDate(date));
	}

}
