package com.springCareer.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.springCareer.domain.UserVO;
import com.springCareer.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class UserServiceImpl implements UserService {

	private UserMapper mapper;

	@Override
	public boolean checkUserId(String userId) {
		// TODO Auto-generated method stub
		log.info("유저 ID 중복여부 : " + userId);
		if (mapper.checkUserId(userId) != null) { // 중복
			return true;
		} else { // 가능
			return false;
		}
	}

	@Override
	public void registerUser(UserVO user, HttpSession session) {
		// TODO Auto-generated method stub
		log.info("등록 -> " + user);

		mapper.insertUser(user);
		session.setAttribute("userId", user.getUserId());
		session.setAttribute("userName", user.getUserName());

	}

	@Override
	public UserVO getUser(String userId) {
		// TODO Auto-generated method stub
		log.info("유저ID -> " + userId);
		return mapper.readUser(userId);
	}

	@Override
	public List<UserVO> getList() {
		// TODO Auto-generated method stub
		log.info("유저들 -> ");
		return mapper.getUserList();
	}

	@Override
	public boolean modifyUser(UserVO user) {
		// TODO Auto-generated method stub
		log.info("유저 수정 ->" + user);
		return mapper.updateUser(user) == 1;
	}

	@Override
	public boolean removeUser(String userId) {
		// TODO Auto-generated method stub
		log.info("유저 삭제 -> " + userId);
		return mapper.deleteUser(userId) == 1;
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();
	}

	@Override
	public UserVO login(UserVO user, HttpSession session) {
		// TODO Auto-generated method stub
		UserVO user2 = mapper.loginUser(user);
		log.info(user.getUserPassword() + "<비밀번호 체크>" + user2.getUserPassword());
		if (user.getUserPassword().equals(user2.getUserPassword())) {
			session.setAttribute("userId", user2.getUserId());
			session.setAttribute("userName", user2.getUserName());
			return user2;
		} else {
			user = null;
			log.info("로그인 불가 " + user);
			return user;
		}
	}

}
