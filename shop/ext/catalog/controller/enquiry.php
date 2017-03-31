<?php

class ControllerExtensionModuleEnquiry extends Controller {
	
	public function checkout_cart_before($route, $args) {
		
	}
	
	public function checkout_cart_after($route, $args, &$output) {
		
	}

	public function checkout_checkout_before(&$route, $args) {
		
	}
	
	public function checkout_checkout_after(&$route, $args, &$output) {

	}
	
	public function checkout_confirm_before(&$route, $args) {
		
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
		$this->session->data['guest']['firstname'] = $this->request->post['firstname'];
		$this->session->data['guest']['lastname'] = $this->request->post['lastname'];
		$this->session->data['guest']['email'] = $this->request->post['email'];
		$this->session->data['guest']['telephone'] = $this->request->post['telephone'];
		$this->session->data['guest']['fax'] = $this->request->post['fax'];
		$this->session->data['guest']['custom_field'] = array();
		$this->session->data['comment'] = $this->request->post['enquiry'];

		$action = new Action($route);
		$result = $action->execute($this->registry, array($args));
		
		$route = 'checkout/success';
		$action = new Action($route);
		$result = $action->execute($this->registry, array($args));
		
		if ($result) {
			return $result;
		} else if ($this->response->getOutput()) {
			$this->response->output();
			exit;
		}
		

	}
	
	public function checkout_confirm_after(&$route, $args, &$output) {

	}
	
	public function common_header_before(&$route, $args) {
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/xheader');

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		/* if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		} */

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		//$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		//$data['text_account'] = $this->language->get('text_account');
		//$data['text_register'] = $this->language->get('text_register');
		//$data['text_login'] = $this->language->get('text_login');
		//$data['text_order'] = $this->language->get('text_order');
		//$data['text_transaction'] = $this->language->get('text_transaction');
		//$data['text_download'] = $this->language->get('text_download');
		//$data['text_logout'] = $this->language->get('text_logout');
		//$data['text_checkout'] = $this->language->get('text_checkout');
		//$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		//$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		//$data['logged'] = $this->customer->isLogged();
		//$data['account'] = $this->url->link('account/account', '', true);
		//$data['register'] = $this->url->link('account/register', '', true);
		//$data['login'] = $this->url->link('account/login', '', true);
		//$data['order'] = $this->url->link('account/order', '', true);
		//$data['transaction'] = $this->url->link('account/transaction', '', true);
		//$data['download'] = $this->url->link('account/download', '', true);
		//$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		//$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/xheader', $data);
	}
	
	public function common_footer_before(&$route, $args) {
		$this->load->language('common/xfooter');

		$data['scripts'] = $this->document->getScripts('footer');

		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		//$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		//$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		//$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		//$data['text_voucher'] = $this->language->get('text_voucher');
		//$data['text_affiliate'] = $this->language->get('text_affiliate');
		//$data['text_special'] = $this->language->get('text_special');
		//$data['text_account'] = $this->language->get('text_account');
		//$data['text_order'] = $this->language->get('text_order');
		//$data['text_wishlist'] = $this->language->get('text_wishlist');
		//$data['text_newsletter'] = $this->language->get('text_newsletter');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		//$data['return'] = $this->url->link('account/return/add', '', true);
		$data['sitemap'] = $this->url->link('information/sitemap');
		//$data['manufacturer'] = $this->url->link('product/manufacturer');
		//$data['voucher'] = $this->url->link('account/voucher', '', true);
		//$data['affiliate'] = $this->url->link('affiliate/account', '', true);
		//$data['special'] = $this->url->link('product/special');
		//$data['account'] = $this->url->link('account/account', '', true);
		//$data['order'] = $this->url->link('account/order', '', true);
		//$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		//$data['newsletter'] = $this->url->link('account/newsletter', '', true);

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->addOnline($ip, $this->customer->getId(), $url, $referer);
		}

		return $this->load->view('common/xfooter', $data);
	}
	
	public function common_header_after($route, $args, &$output) {

	}
	
	public function common_footer_after($route, $args, &$output) {

	}

}
