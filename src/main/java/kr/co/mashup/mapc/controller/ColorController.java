package kr.co.mashup.mapc.controller;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import kr.co.mashup.mapc.dto.Color;
import kr.co.mashup.mapc.entity.CourseOption;
import kr.co.mashup.mapc.repository.CourseOptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by ethan.kim on 2018. 7. 1..
 */
@RestController
@Api(description = "색깔", tags = {"color"})
public class ColorController {

    @ApiOperation(value = "Color 리스트 조회", notes = "Color 리스트 조회한다")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "조회 성공"),
            @ApiResponse(code = 400, message = "Invalid Parameter")
    })
    @GetMapping(path = "/color")
    public List<Color> getColor() {
        return Arrays.asList(generateColor("#aaaaaa"), generateColor("#bbbbbb"));
    }

    private Color generateColor(String code) {
        Color color = new Color();
        color.setCode(code);
        return color;
    }
}
