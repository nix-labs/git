<?php

class ControllerModuleEnquiry extends Controller {
    public function index() {
        $this->response->redirect($this->request->server['HTTP_REFERER']);
    }

    public function install() {
        $this->load->model('extension/event');
        $this->model_extension_event->addEvent('enquiry', 'catalog/controller/common/footer/after', 'module/enquiry/remove_powered_by');
    }

    public function uninstall() {
        $this->load->model('extension/event');
        $this->model_extension_event->deleteEvent('enquiry');
    }
}
