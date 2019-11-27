package com.internousdev.pumpkin.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class CreateUserAction extends ActionSupport implements SessionAware{
	//フィールド
	private String backFlag;
	private Map<String, Object> session;

	public String execute() {
		//IF文でbackFlagがnullかどうか確認している。
		//backFlagはcreateUserConfirm.jspの戻るボタンを押したことにより1が挿入される
		//もし、backFlagがIFの条件と正しい場合session.removeが実行される。
		//removeのによりセッションを削除
		if (backFlag == null) {
			session.remove("familyName");
			session.remove("firstName");
			session.remove("familyNameKana");
			session.remove("firstNameKana");
			session.remove("sex");
			session.remove("sexList");
			session.remove("email");
			session.remove("userIdForCreateUser");
			session.remove("password");
		}
		// 画面表示時に選択されている性別
		if(!session.containsKey("sex")) {
			session.put("sex", "男性");
		}else {
			session.put("sex", String.valueOf(session.get("sex")));
		}

		// 選択肢を生成
		if (!session.containsKey("sexList")) {
			
			//Listを使用しラジオボタンを作成するためsexListインスタンス化
			List<String> sexList = new ArrayList<String>();
			
			//Listの０番に男性、１番に女性
			sexList.add("男性");
			sexList.add("女性");
			
			//sessionに格納
			session.put("sexList", sexList);
		}
		
		//SUCCESSを呼び出し元に戻す。
		return SUCCESS;
	}

	//getterとsetter
	public String getBackFlag() {
		return backFlag;
	}

	public void setBackFlag(String backFlag) {
		this.backFlag = backFlag;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
