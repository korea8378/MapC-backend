package kr.co.mashup.mapc.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import kr.co.mashup.mapc.dto.DetailCourse;
import kr.co.mashup.mapc.dto.TouristAttractions;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by ethan.kim on 2018. 8. 30..
 */
@RestController
@Api(description = "코스", tags = {"course"})
@RequestMapping(value = "/courses", produces = "application/json")
public class CourseController {


    @ApiOperation(value = "관광지 리스트 더 보기", notes = "관광지 리스트를 더 조회 한다.")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "조회 성공")
    })
    @GetMapping(path = "/courses/{course_Id}/{page}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public ResponseEntity<String> getMoreTourist(@PathVariable(value = "course_Id") String courseId) {
        return new ResponseEntity<>(courseId, HttpStatus.OK);
    }
}

