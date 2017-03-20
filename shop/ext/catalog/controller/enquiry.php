<?php

class ControllerModuleEnquiry extends Controller {

	public function forward(&$route, $args) {
		 
		$route = 'checkout/confirm';
		$action = new Action($route);
		$result = $action->execute($this->registry, array($args));

		if ($result) {
			return $result;
		} else if ($this->response->getOutput()) {
			$this->response->output();
			exit;
		}
	}

}
