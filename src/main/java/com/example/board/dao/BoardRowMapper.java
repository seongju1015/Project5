package com.example.board.dao;

import com.example.board.model.BoardVO;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class BoardRowMapper implements RowMapper<BoardVO> {
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setCatID(rs.getInt("seq"));
        vo.setCatName(rs.getString("Name"));
        vo.setCatType(rs.getString("Type"));
        vo.setCatColor(rs.getString("Color"));
        vo.setCatOld(rs.getInt("Old"));
        vo.setCatBirthday(rs.getString("Birthday"));
        vo.setCatPersonality(rs.getString("Personality"));
        vo.setCatHealth(rs.getString("Health"));
        return vo;
    }

}
