package com.internousdev.pumpkin.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.pumpkin.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class CreateUserCompleteAction extends ActionSupport implements SessionAware{
	//フィールド
	private Map<String, Object> session;

	public String execute() {
		//resultの初期値としてERROR
		String result = ERROR;
		
		//sexは初期値としてnull
		String sex = null;
		
		//IF文により,session.getでsexを呼び出し、
		//equalsで""の中と同じかどうか比較している。
		//""と同じ場合はsex="1を返しそれ以外の場合sex="0"を返す"
		if ("女性".equals(String.valueOf(session.get("sex")))) {
			sex = "1";
		} else {
			sex = "0";
		}
		
		//UserInfoDAOの型でuserInfoDAOをインスタンス化
		UserInfoDAO userInfoDAO = new UserInfoDAO();

		//.toStringを使用した場合に値にnullが出た場合、エラーになる。
		//String.valueOfを使用した場合に値にnullが出た場合、エラーにならない。
		//データベースのnullがonかoffかどうかによって変えていく。
		int count = userInfoDAO.createUser(
				session.get("familyName").toString(),
				session.get("firstName").toString(),
				String.valueOf(session.get("familyNameKana")),
				String.valueOf(session.get("firstNameKana")),
				sex,
				String.valueOf(session.get("email")),
				session.get("userIdForCreateUser").toString(),
				session.get("password").toString()
		);

		//IF文によりcountに値が入っているか、入っている場合
		//resultにSUCCESSを入れる.
		//sessionにcreateUserFlagと言うkey名で1を格納
		if(count > 0) {
			result = SUCCESS;
			session.put("createUserFlag", "1");
		}

		//removeのによりセッションを削除
		session.remove("familyName");
		session.remove("firstName");
		session.remove("familyNameKana");
		session.remove("firstNameKana");
		session.remove("sex");
		session.remove("sexList");
		session.remove("email");

		//resultに入っている値を呼び出し元に戻す。
		return result;
	}

	//getterとsetter
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
