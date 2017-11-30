package com.neu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.neu.entity.EventInfo;

@Repository(value="EventDao")
public class EventDao {
	@Autowired
	private SqlSession sqlSession;
	
	public List<EventInfo> getEventByWeek(EventInfo e){
		List<EventInfo> list = sqlSession.selectList("com.neu.entity.EventMapper.getEventByWeek",e);
		return list;
	}
	public List<EventInfo> getAllEvent(){
		List<EventInfo> list = sqlSession.selectList("com.neu.entity.EventMapper.getAllEvent");
		return list;
	}
	public List<EventInfo> getEventByContent(String content){
		List<EventInfo> list = sqlSession.selectList("com.neu.entity.EventMapper.getEventByContent",content);
		return list;
	}
	public void update1ById(EventInfo e){
		sqlSession.update("com.neu.entity.EventMapper.update1ById",e);
	}
	public void update2ById(EventInfo e){
		sqlSession.update("com.neu.entity.EventMapper.update2ById",e);
	}
	public void update3ById(EventInfo e){
		sqlSession.update("com.neu.entity.EventMapper.update3ById",e);
	}
	public void update4ById(EventInfo e){
		sqlSession.update("com.neu.entity.EventMapper.update4ById",e);
	}
	public void update5ById(EventInfo e){
		sqlSession.update("com.neu.entity.EventMapper.update5ById",e);
	}
	public void update6ById(EventInfo e){
		sqlSession.update("com.neu.entity.EventMapper.update6ById",e);
	}
}
