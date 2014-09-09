package com.frditlabs.actions;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.frditlabs.datamanager.MovementManager;
import com.frditlabs.model.Movement;
import com.opensymphony.xwork2.ActionSupport;

public class MovementAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private Long lotId;
	private Movement movement;
	private List<Movement> movements;
	private MovementManager mngr = new MovementManager();
	
	@Action(value="movements", results={
			@Result(name="success", location="movement.jsp")
	})
	public String showMovements() {
		setMovements(mngr.getAll(lotId));
		return SUCCESS;
	}
	
	@Action(value="saveMovement", results={
			@Result(name="success", location="movement.jsp")
	})
	public String saveMovement() {
		mngr.save(movement);
		lotId = movement.getLot();
		setMovements(mngr.getAll(lotId));
		return SUCCESS;
	}

	public Long getLotId() {
		return lotId;
	}

	public void setLotId(Long lotId) {
		this.lotId = lotId;
	}

	public Movement getMovement() {
		return movement;
	}

	public void setMovement(Movement movement) {
		this.movement = movement;
	}

	public List<Movement> getMovements() {
		return movements;
	}

	public void setMovements(List<Movement> movements) {
		this.movements = movements;
	}

	public MovementManager getMngr() {
		return mngr;
	}

	public void setMngr(MovementManager mngr) {
		this.mngr = mngr;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
