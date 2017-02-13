/**
 * 前端js的一些常量
 */
window.baseConstant = {};

baseConstant.pattern = {};
/**
 * 只能输入数字的正则表达式
 */
baseConstant.pattern.numberOnly = "\\\\d+";

/**
 * 匹配数据库日期时间的正则表达式。
 */
baseConstant.pattern.dbDateTime = /\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d{3}/;

/**
* 校验邮箱地址的正则表达式
*/
baseConstant.pattern.emailCheck = "^(\\w)+(\\.\\w+)*@(\\w)+((\\.\\w+)+)$";

/**
 * 账号校验，规则：数字，字母，下划线组成，只能由字母开头，长度3-100位。
 */
baseConstant.pattern.accountCheck = "^[a-zA-z]\\w{2,99}$";