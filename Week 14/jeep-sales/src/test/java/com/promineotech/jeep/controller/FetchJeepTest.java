package com.promineotech.jeep.controller;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.jdbc.SqlConfig;
import org.springframework.test.jdbc.JdbcTestUtils;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.promineotech.jeep.controller.support.FetchJeepTestSupport;
import com.promineotech.jeep.entity.JeepModel;
import com.promineotech.jeep.entity.Jeep;

@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@ActiveProfiles("test")
@Sql(scripts = { "classpath:flyway/migrations/V1.0__Jeep_Schema.sql", "classpath:flyway/migrations/V1.1__Jeep_Data.sql"}, config = @SqlConfig(encoding = "utf-8"))
class FetchJeepTest extends FetchJeepTestSupport {

	@Test
	void testThatJeepsAreReturnedWhenAValidModelAndTrimAreSupplied() {
		// Given: A valid model, trim, and URI
		JeepModel model = JeepModel.WRANGLER;
		String trim = "Sport";
		String uri = String.format("%s?model=%s&trim=%s", getBaseUri(), model, trim);
		
		//When: a connection is made to the URI
		ResponseEntity<List<Jeep>> response =
		getRestTemplate().exchange(uri, HttpMethod.GET, null,
				new ParameterizedTypeReference<>() {});
		
		//Then: a success (OK - 200) status code is returned
		assertThat(response.getStatusCode()).isEqualTo(HttpStatus.OK);
	
		//And: the actual list is returned is the same as the expected list
		List<Jeep> expected = buildExpected();
		System.out.println(expected);
		assertThat(response.getBody()).isEqualTo(expected);
	}

}
