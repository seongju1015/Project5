package com.example.board.dao;

import com.example.board.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo){
        String sql = "insert into CatInfo (CatName,CatGender,CatType,CatColor,CatOld,CatBirthday,CatPersonality,CatHealth) values("
                +"'"+vo.getCatName()+"',"
                +"'"+vo.getCatGender()+"',"
                +"'"+vo.getCatType()+"',"
                +"'"+vo.getCatColor()+"',"
                +"'"+vo.getCatOld()+"',"
                +"'"+vo.getCatBirthday()+"',"
                +"'"+vo.getCatPersonality()+"',"
                +"'"+vo.getCatHealth()+"')";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int seq){
        String sql = "delete from CatInfo where CatID =" +seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo){

        String sql = "update CatInfo set CatName='" + vo.getCatName()+"',"
                +"CatGender='" + vo.getCatGender()+"',"
                +"CatType='" + vo.getCatType()+"',"
                +"CatColor='" + vo.getCatColor()+"',"
                +"CatOld='" + vo.getCatOld()+"',"
                +"CatBirthday='" + vo.getCatBirthday()+"',"
                +"CatPersonality='" + vo.getCatPersonality()+"',"
                +"CatHealth='" + vo.getCatHealth()+"'where CatID="+vo.getCatID();

        System.out.println(vo.getCatName());
        System.out.println(vo.getCatID());

        return jdbcTemplate.update(sql);
    }
    public BoardVO getBoard(int seq){
        String sql ="select * from CatInfo where CatID="+seq;
        return jdbcTemplate.queryForObject(sql,new BoardRowMapper());
    }
    public List<BoardVO> getBoardList(){
        String sql = "select * from CatInfo order by CatID desc";
        return jdbcTemplate.query(sql,new BoardRowMapper());
    }
}

