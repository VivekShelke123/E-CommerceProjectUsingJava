package com.squad.eshop.model;

public class AssociateToModel {
	private int associateId;
	private String associateName;
	
	public AssociateToModel(String associateName) {
		this.associateName = associateName;
	}

	public int getAssociateId() {
		return associateId;
	}

	public void setAssociateId(int associateId) {
		this.associateId = associateId;
	}

	public String getAssociateName() {
		return associateName;
	}

	public void setAssociateName(String associateName) {
		this.associateName = associateName;
	}
	
}
