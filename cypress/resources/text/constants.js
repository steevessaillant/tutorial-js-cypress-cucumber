function define(name, value) {
    Object.defineProperty(exports, name, {
        value:      value,
        enumerable: true
    });
}

//xpath locator
define("USERNAME_FIELD", 'input[id=username_field]');
define("PASSWORD_FIELD", 'input[id=password_field]');
define("LOGIN_BUTTON", 'input[type=submit]');
define("RESULT_HEADER", 'h1');
define("LOGOUT_LINK", 'a');

//strings
define("LOGIN_TEXT", 'LOGIN');
define("LOGOUT_TEXT", 'logout');
define("WELCOME_PAGE_TITLE", 'Welcome Page');
define("ERROR_PAGE_TITLE", 'Error Page');
define("LOGIN_PAGE_TITLE", 'Login Page');

