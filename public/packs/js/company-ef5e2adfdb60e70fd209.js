/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/company.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/company.js":
/*!*****************************************!*\
  !*** ./app/javascript/packs/company.js ***!
  \*****************************************/
/*! no static exports found */
/***/ (function(module, exports) {

document.addEventListener('DOMContentLoaded', function () {
  console.log('test');
  var name_modal = document.getElementById('name_modal');
  var form_modal = document.getElementById('form_modal');
  var name_edit = document.getElementById('company_name');
  var address_edit = document.getElementById('company_address');
  var type_method = document.getElementById('method_put');
  var method = "<input type='hidden' name='_method' value='put' />";
  var button = document.getElementById('buton_action_modal');
  var addButton = document.getElementById('add-button');
  var showButton = document.getElementById('show-button');
  var editButton = document.getElementById('edit-button');
  addButton.addEventListener('click', add());
  showButton.addEventListener('click', show(id, name, address));
  editButton.addEventListener('click', edit(name, address));

  function add() {
    name_modal.innerHTML = 'Add Company';
    form_modal.action = '/companies';
    name_edit.value = "";
    address_edit.value = "";
    type_method.innerHTML = "";
    button.classList.remove('d-none');
  }

  function edit(id, name, address) {
    name_modal.innerHTML = 'Edit Company';
    form_modal.action = '/companies/' + id;
    name_edit.value = name;
    address_edit.value = address;
    type_method.innerHTML = method;
    button.classList.remove('d-none');
  }

  function show(name, address) {
    name_modal.innerHTML = 'Show Company';
    form_modal.action = '';
    name_edit.value = name;
    address_edit.value = address;
    type_method.innerHTML = '';
    button.classList.add('d-none');
  }
});

/***/ })

/******/ });
//# sourceMappingURL=company-ef5e2adfdb60e70fd209.js.map