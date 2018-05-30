/* 소스 출처-
 * https://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1040201&docId=163654281&qb=dG9tY2F0IOykkeuztSDroZzqt7jsnbgg6riw64ql&enc=utf8&section=kin&rank=1&search_sort=0&spq=0&pid=TwYIzlpySEdsstxvN8ossssss9R-213973&sid=HFRwF/Yi%2BdNAfsCfSgFxvQ%3D%3D
 * 
 * 
 * 추가 아이디어-
 * https://blog.naver.com/skarion/10112660926
*/

package com.sist.controller;

import java.util.*;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionManager implements HttpSessionListener {
	private static SessionManager sessionManager = null;
	private static Hashtable sessionMonitor;

	public SessionManager() {
		if (sessionMonitor == null)
			sessionMonitor = new Hashtable();
		sessionManager = this;
	}

	public static synchronized SessionManager getInstance() {
		if (sessionManager == null)
			sessionManager = new SessionManager();
		return sessionManager;
	}

	/** 현재 활성화 된 session의 수를 반환한다. */
	public int getActiveSessionCount() {
		return sessionMonitor.size();
	}

	/** 현재 등록된 session의 id목록을 반환한다. */
	public Enumeration getIds() {
		return sessionMonitor.keys();
	}
	
	public boolean existSession(String sid) {
		boolean flag=false;
		Enumeration eNum = sessionMonitor.elements();
		while (eNum.hasMoreElements()) {
			HttpSession sh_session = null;
			try {
				sh_session = (HttpSession) eNum.nextElement();
			} catch (Exception e) {
				continue;
			}
			if(sh_session.getId().equals(sid)){
				System.out.println(sh_session.getId()+" : "+sid);
				flag=true;
				break;
			}
		}
		
		return flag;
	}

	/**
	 * 현재 등록된 session중 현재 접속된 사용자 정보와 중복 여부 확인 후 중복 접속 이면 이전의 세션을 소멸 시킨다.
	 */
	public boolean checkDuplicationLogin(String sessionId, String userId) {
		boolean ret = false;
		Enumeration eNum = sessionMonitor.elements();
		System.out.println("session count : " + getActiveSessionCount());
		while (eNum.hasMoreElements()) {
			HttpSession sh_session = null;
			try {
				sh_session = (HttpSession) eNum.nextElement();
			} catch (Exception e) {
				continue;
			}
			String idInSession = (String)sh_session.getAttribute("name");
			if (idInSession != null) {
				if (userId.equals(idInSession) && !sessionId.equals(sh_session.getId())) {
					// 전달 받은 아이디와(userId) 기존 세션값 중 아이디가 중복 되면
					// 기존 세션을 소멸 시킨다.

					/*try {
					// 사용자 로그아웃 이력(중복접속)을 저장한다.
						HashMap param = new HashMap();
						param.put("usrId", baseModel.getUserId_());
						param.put("ipAddr", baseModel.getRemoteIp_());
						param.put("logKind", "LOGOUT");
						param.put("logRsn", "DUPLICATE");
						// DB 처리
						xxxxxxxx.insertLoginLog(param);

					} catch (Exception e) {
						e.printStackTrace();
					}*/
					// 해당 세션 무효화
					System.out.println(idInSession +" - "+sh_session.getId() +" : CLOSE SESSION");
					sh_session.invalidate();
					ret = true;
					break;
				}
			}
		}
		return ret;
	}

	/** 세션 생성시 이벤트 처리 */
	public void sessionCreated(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		synchronized (sessionMonitor) {
			sessionMonitor.put(session.getId(), session);
		}
	}

	/** 세션 소멸(종료)시 이벤트 처리 */
	public void sessionDestroyed(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		synchronized (sessionMonitor) {
			sessionMonitor.remove(session.getId());
		}
	}
}