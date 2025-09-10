package com.squad.eshop.service.AssociateTo;

import com.squad.eshop.dao.AssociateTo.IAssociateToDAO;
import com.squad.eshop.model.AssociateToModel;

public class AssociateToService implements IAssociateToService {

	private IAssociateToDAO associateDao;
	
	
	
	public AssociateToService(IAssociateToDAO associateDao) {
		this.associateDao = associateDao;
	}



	@Override
	public AssociateToModel getAssociate(int associateId) {
		
		AssociateToModel associate = null;
		
		associate = associateDao.getAssociateTo(associateId);
		
		return associate;
	}

}
