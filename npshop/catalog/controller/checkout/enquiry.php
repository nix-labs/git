<?php
class ControllerCheckoutEnquiry extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('checkout/enquiry');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			//$this->response->redirect($this->url->link('information/contact/success'));
			
			//Shipping Address
			$this->session->data['shipping_address']['firstname'] = '';
			$this->session->data['shipping_address']['lastname'] = '';
			$this->session->data['shipping_address']['company'] = '';
			$this->session->data['shipping_address']['address_1'] = '';
			$this->session->data['shipping_address']['address_2'] = '';
			$this->session->data['shipping_address']['city'] = '';
			$this->session->data['shipping_address']['postcode'] = '';
			$this->session->data['shipping_address']['zone'] = '';
			$this->session->data['shipping_address']['zone_id'] = '';
			$this->session->data['shipping_address']['country'] = '';
			$this->session->data['shipping_address']['country_id'] = '';
			$this->session->data['shipping_address']['address_format'] = '';

			//Shipping Method
			$this->session->data['shipping_method']['title'] = '';
			$this->session->data['shipping_method']['code'] = '';
			
			//Payment Address
			$this->session->data['payment_address']['firstname'] = '';
			$this->session->data['payment_address']['lastname'] = '';
			$this->session->data['payment_address']['company'] = '';
			$this->session->data['payment_address']['address_1'] = '';
			$this->session->data['payment_address']['address_2'] = '';
			$this->session->data['payment_address']['postcode'] = '';
			$this->session->data['payment_address']['city'] = '';
			$this->session->data['payment_address']['country_id'] = '';
			$this->session->data['payment_address']['zone_id'] = '';
			$this->session->data['payment_address']['zone'] = '';
			$this->session->data['payment_address']['country'] = '';
			$this->session->data['payment_address']['address_format'] = '';
			
			//Payment Method
			$this->session->data['payment_method']['code'] = 'free_checkout';
			$this->session->data['payment_method']['title'] = 'Free Checkout';
			
			//Register Customer
			$this->load->model('account/customer');
			$customer_id = $this->model_account_customer->addCustomer($this->request->post);
			
			$this->session->data['account'] = 'guest';

			$this->session->data['guest']['customer_id'] = $customer_id;
			$this->session->data['guest']['customer_group_id'] = 1;
			$this->session->data['guest']['firstname'] = $this->request->post['name'];
			$this->session->data['guest']['lastname'] = '';
			$this->session->data['guest']['email'] = $this->request->post['email'];
			$this->session->data['guest']['telephone'] = '';
			$this->session->data['guest']['fax'] = '';
			$this->session->data['guest']['custom_field'] = array();
			
			$this->session->data['comment'] = $this->request->post['enquiry'];

			$this->response->redirect($this->url->link('checkout/confirm'));
			//$this->response->redirect($this->load->controller('checkout/confirm'));
			
			//$this->response->redirect($this->url->link('checkout/success'));
		}

// 		$data['breadcrumbs'] = array();

// 		$data['breadcrumbs'][] = array(
// 			'text' => $this->language->get('text_home'),
// 			'href' => $this->url->link('common/home')
// 		);

// 		$data['breadcrumbs'][] = array(
// 			'text' => $this->language->get('heading_title'),
// 			'href' => $this->url->link('information/contact')
// 		);

 		$data['text_contact'] = $this->language->get('text_contact');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_enquiry'] = $this->language->get('entry_enquiry');

		$data['button_map'] = $this->language->get('button_map');

		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}

		if (isset($this->error['email'])) {
			$data['error_email'] = $this->error['email'];
		} else {
			$data['error_email'] = '';
		}

		if (isset($this->error['enquiry'])) {
			$data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$data['error_enquiry'] = '';
		}

		if (isset($this->error['captcha'])) {
			$data['error_captcha'] = $this->error['captcha'];
		} else {
			$data['error_captcha'] = '';
		}

		$data['button_submit'] = $this->language->get('button_submit');

		$data['action'] = $this->url->link('checkout/cart');

		$this->load->model('tool/image');

		if ($this->config->get('config_image')) {
			$data['image'] = $this->model_tool_image->resize($this->config->get('config_image'), $this->config->get('config_image_location_width'), $this->config->get('config_image_location_height'));
		} else {
			$data['image'] = false;
		}

		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} else {
			$data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['enquiry'])) {
			$data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$data['enquiry'] = '';
		}

		if ($this->config->get('config_google_captcha_status')) {
			$this->document->addScript('https://www.google.com/recaptcha/api.js');

			$data['site_key'] = $this->config->get('config_google_captcha_public');
		} else {
			$data['site_key'] = '';
		}

// 		$data['column_left'] = $this->load->controller('common/column_left');
// 		$data['column_right'] = $this->load->controller('common/column_right');
// 		$data['content_top'] = $this->load->controller('common/content_top');
// 		$data['content_bottom'] = $this->load->controller('common/content_bottom');
// 		$data['footer'] = $this->load->controller('common/footer');
// 		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/enquiry.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/checkout/enquiry.tpl', $data);
		} else {
			return $this->load->view('default/template/checkout/enquiry.tpl', $data);
		}
	}

	public function success() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_message'] = $this->language->get('text_success');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/success.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/success.tpl', $data));
		}
	}

	protected function validate() {
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = $this->language->get('error_name');
		}

		if (!preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
			$this->error['email'] = $this->language->get('error_email');
		}

		if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
			$this->error['enquiry'] = $this->language->get('error_enquiry');
		}

		if ($this->config->get('config_google_captcha_status')) {
			$recaptcha = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($this->config->get('config_google_captcha_secret')) . '&response=' . $this->request->post['g-recaptcha-response'] . '&remoteip=' . $this->request->server['REMOTE_ADDR']);

			$recaptcha = json_decode($recaptcha, true);

			if (!$recaptcha['success']) {
				$this->error['captcha'] = $this->language->get('error_captcha');
			}
		}

		return !$this->error;
	}
}