/* �ҽ� ��ó-
 * https://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1040201&docId=163654281&qb=dG9tY2F0IOykkeuztSDroZzqt7jsnbgg6riw64ql&enc=utf8&section=kin&rank=1&search_sort=0&spq=0&pid=TwYIzlpySEdsstxvN8ossssss9R-213973&sid=HFRwF/Yi%2BdNAfsCfSgFxvQ%3D%3D
 * 
 * 
 * �߰� ���̵��-
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

	/** ���� Ȱ��ȭ �� session�� ���� ��ȯ�Ѵ�. */
	public int getActiveSessionCount() {
		return sessionMonitor.size();
	}

	/** ���� ��ϵ� session�� id����� ��ȯ�Ѵ�. */
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
	 * ���� ��ϵ� session�� ���� ���ӵ� ����� ������ �ߺ� ���� Ȯ�� �� �ߺ� ���� �̸� ������ ������ �Ҹ� ��Ų��.
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
					// ���� ���� ���̵��(userId) ���� ���ǰ� �� ���̵� �ߺ� �Ǹ�
					// ���� ������ �Ҹ� ��Ų��.

					/*try {
					// ����� �α׾ƿ� �̷�(�ߺ�����)�� �����Ѵ�.
						HashMap param = new HashMap();
						param.put("usrId", baseModel.getUserId_());
						param.put("ipAddr", baseModel.getRemoteIp_());
						param.put("logKind", "LOGOUT");
						param.put("logRsn", "DUPLICATE");
						// DB ó��
						xxxxxxxx.insertLoginLog(param);

					} catch (Exception e) {
						e.printStackTrace();
					}*/
					// �ش� ���� ��ȿȭ
					System.out.println(idInSession +" - "+sh_session.getId() +" : CLOSE SESSION");
					sh_session.invalidate();
					ret = true;
					break;
				}
			}
		}
		return ret;
	}

	/** ���� ������ �̺�Ʈ ó�� */
	public void sessionCreated(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		synchronized (sessionMonitor) {
			sessionMonitor.put(session.getId(), session);
		}
	}

	/** ���� �Ҹ�(����)�� �̺�Ʈ ó�� */
	public void sessionDestroyed(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		synchronized (sessionMonitor) {
			sessionMonitor.remove(session.getId());
		}
	}
}