package com.niuys.gdzc.web.struts.action;

import com.niuys.gdzc.service.*;
import org.apache.struts.action.Action;



public class BaseAction extends Action {

	protected AssetManager assetManagerImpl;
	public void setAssetManagerImpl(AssetManager assetManagerImpl) {
		this.assetManagerImpl = assetManagerImpl;
	}

	protected IAssetPerManager  assetPerManagerImpl;
	public void setAssetPerManagerImpl(IAssetPerManager assetPerManagerImpl) {
		this.assetPerManagerImpl = assetPerManagerImpl;
	}

	protected IInOutAssetManager  inOutAssetManagerImpl;
	public void setInOutAssetManagerImpl(IInOutAssetManager inOutAssetManagerImpl) {
		this.inOutAssetManagerImpl = inOutAssetManagerImpl;
	}


	protected IEmployeeManager employeeManagerImpl;

	public void setEmployeeManagerImpl(IEmployeeManager employeeManagerImpl) {
		this.employeeManagerImpl = employeeManagerImpl;
	}


	protected IUserManaManager userManaManagerImpl;

	public void setUserManaManagerImpl(IUserManaManager userManaManagerImpl) {
		this.userManaManagerImpl = userManaManagerImpl;
	}



}
