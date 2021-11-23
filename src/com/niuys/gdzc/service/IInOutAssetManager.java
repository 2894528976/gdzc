package com.niuys.gdzc.service;

import com.niuys.gdzc.model.Comployee;
import com.niuys.gdzc.model.ZcInfo;
import com.niuys.gdzc.model.ZcInout;

import java.util.List;


public interface IInOutAssetManager {

	public List showLendAssets();

	public List findPageLendAssets(int pageStartRow, int pageCount);

	public Comployee getOneEmployee(String comployeeNo);

	public ZcInfo getOneZc(String zcId);

	public boolean backZC(String inoutNo, String zcId);

	public String zcStatus(String zcId);

	public boolean outZC(ZcInout inout,String zcId);

	public List ZCInOut(ZcInout inout);
}
