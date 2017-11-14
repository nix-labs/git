<?php
class ControllerModuleOrdprdimg extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/ordprdimg');

		$this->document->setTitle($this->language->get('doc_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('ordprdimg', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_image_size'] = $this->language->get('entry_image_size');
		$data['entry_image_col_name'] = $this->language->get('entry_image_col_name');
  
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/ordprdimg', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['action'] = $this->url->link('module/ordprdimg', 'token=' . $this->session->data['token'], 'SSL');

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->load->model('localisation/language');

		$data['languages'] = $this->model_localisation_language->getLanguages();
		
 		if (isset($this->request->post['ordprdimg_status'])) {
			$data['ordprdimg_status'] = $this->request->post['ordprdimg_status'];
		} else {
			$data['ordprdimg_status'] = $this->config->get('ordprdimg_status');
		}
		
		if (isset($this->request->post['ordprdimg_img_w'])) {
			$data['ordprdimg_img_w'] = $this->request->post['ordprdimg_img_w'];
		} else {
			$data['ordprdimg_img_w'] = $this->config->get('ordprdimg_img_w');
		}
		
		if (isset($this->request->post['ordprdimg_img_h'])) {
			$data['ordprdimg_img_h'] = $this->request->post['ordprdimg_img_h'];
		} else {
			$data['ordprdimg_img_h'] = $this->config->get('ordprdimg_img_h');
		}
		
		if (isset($this->request->post['ordprdimg_image_col_name'])) {
			$data['ordprdimg_image_col_name'] = $this->request->post['ordprdimg_image_col_name'];
		} else {
			$data['ordprdimg_image_col_name'] = $this->config->get('ordprdimg_image_col_name');
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/ordprdimg.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/ordprdimg')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}