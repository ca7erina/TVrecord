package action;



import dao.TVDao;




public class DeleteAction {
	private Integer[] ids;
	private TVDao dao = new TVDao();
	public String execute() {
		dao = new TVDao();
		try {
			dao.delete(ids);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		System.out.println("delete ids : " + ids);
		return "success";
	}

	public Integer[] getIds() {
		return ids;
	}

	public void setIds(Integer[] ids) {
		this.ids = ids;
	}

	public TVDao getDao() {
		return dao;
	}
	public void setDao(TVDao dao) {
		this.dao = dao;
	}




}
