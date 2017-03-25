<?php

class ControllerExtensionModuleEnquiry extends Controller {
	public function index() {
		$this->response->redirect($this->request->server['HTTP_REFERER']);
	}

	public function install() {
		$this->load->model('extension/event');
		$this->model_extension_event->addEvent('enquiry0', 'catalog/controller/checkout/cart/before', 'extension/module/enquiry/checkout_cart_before');
		$this->model_extension_event->addEvent('enquiry1', 'catalog/controller/checkout/cart/after', 'extension/module/enquiry/checkout_cart_after');
		$this->model_extension_event->addEvent('enquiry2', 'catalog/controller/checkout/checkout/before', 'extension/module/enquiry/checkout_checkout_before');
		$this->model_extension_event->addEvent('enquiry3', 'catalog/controller/checkout/checkout/after', 'extension/module/enquiry/checkout_checkout_after');
		$this->model_extension_event->addEvent('enquiry4', 'catalog/controller/checkout/confirm/before', 'extension/module/enquiry/checkout_confirm_before');
		$this->model_extension_event->addEvent('enquiry5', 'catalog/controller/checkout/confirm/after', 'extension/module/enquiry/checkout_confirm_after');
	}

	public function uninstall() {
		$this->load->model('extension/event');
		$this->model_extension_event->deleteEvent('enquiry0');
		$this->model_extension_event->deleteEvent('enquiry1');
		$this->model_extension_event->deleteEvent('enquiry2');
		$this->model_extension_event->deleteEvent('enquiry3');
		$this->model_extension_event->deleteEvent('enquiry4');
		$this->model_extension_event->deleteEvent('enquiry5');
	}
}
