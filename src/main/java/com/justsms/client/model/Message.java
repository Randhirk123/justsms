package com.justsms.client.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "message")
@DynamicUpdate
public class Message {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer Id;
	
	@Column(name = "msg_Channel")
	private String msgChannel;
	
	@Column(name = "Msg_Route")
	private String msgRoute;
	
	@Column(name = "sender_Id")
	private String senderId;
	
	@Column(name = "campaign_Name")
	private String campaignName;
	
	@Column(name = "mobile_Number")
	private String mobileNumber;
	
	
	@Column(name = "message_Lang")
	private String messageLang;
	
	@Column(name = "message_Setting")
	private String messageSetting;
	
	@Column(name = "message")
	private String smsmessage;
	
	private Boolean status;
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at",updatable = false)
	private Date created_at;
	
	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updated_at",insertable = false)
	private Date updated_at;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getMsgChannel() {
		return msgChannel;
	}

	public void setMsgChannel(String msgChannel) {
		this.msgChannel = msgChannel;
	}

	public String getMsgRoute() {
		return msgRoute;
	}

	public void setMsgRoute(String msgRoute) {
		this.msgRoute = msgRoute;
	}

	public String getSenderId() {
		return senderId;
	}

	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}

	public String getCampaignName() {
		return campaignName;
	}

	public void setCampaignName(String campaignName) {
		this.campaignName = campaignName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getMessageLang() {
		return messageLang;
	}

	public void setMessageLang(String messageLang) {
		this.messageLang = messageLang;
	}

	public String getMessageSetting() {
		return messageSetting;
	}

	public void setMessageSetting(String messageSetting) {
		this.messageSetting = messageSetting;
	}

	

	public String getSmsmessage() {
		return smsmessage;
	}

	public void setSmsmessage(String smsmessage) {
		this.smsmessage = smsmessage;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	
	
}
