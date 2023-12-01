package com.example.board.dao;

import com.example.board.model.BoardVO;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class BoardRowMapper implements RowMapper<BoardVO> {

    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setCatID(rs.getInt("CatID"));
        vo.setCatName(rs.getString("CatName"));
        vo.setCatType(rs.getString("CatType"));
        vo.setCatColor(rs.getString("CatColor"));
        vo.setCatGender(rs.getString("CatGender"));
        vo.setCatOld(rs.getInt("CatOld"));
        vo.setCatBirthday(rs.getString("CatBirthday"));
        vo.setCatPersonality(rs.getString("CatPersonality"));
        vo.setCatHealth(rs.getString("CatHealth"));
        return vo;
    }

}
