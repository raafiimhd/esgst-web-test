import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier {
  TextEditingController textEditingController = TextEditingController();
  bool _showInvoices = false;
  bool _showEstimates = false;
  bool _showIncome = false;
  bool _showVouchers = false;
  bool _showCashBank = false;
  bool _showPayroll = false;
  String _dropDownValue = '';
  String _title = 'Creadites Note(Sales Return)';
  bool _showSalesInvoices = false;
  String _selectTextDrop = 'Hello World';
  String _selectBankDrop = 'HDFC';
  String _selectCashDrop = 'Cash';
  String createCompesationDrop = 'Customer Type';
  String createCashTypeDrop = 'INR';
  bool showCreateContants = false;
  bool _showCredit = false;
  String selectCredit = 'Select';
  String selectCustomer = 'SelectCustomer';
  String selectBank = 'Bank Details';
  bool showDeliveryChallen = false;
  bool showProcessingScreen = false;
  String selectIncomSelect = '';
  bool showIncomeWidget = false;
  String paymentSelect = '';
  String gstSelect = 'Select';
  String itemTypeSelect = '';
  String sacSelect = '';
  String gstTaxSelect = '';
  bool itemName = false;
  bool showPayment = false;
  bool showReceipt = false;
  bool showItemType = false;
  bool showItemName = false;
  bool showStockOpening = false;
  String bankAccount = '';
  bool showBankAccount = false;
  bool showLoan = false;
  bool showAnnextureone = false;
  bool showMenu = false;
  DateTime selectedDate = DateTime.now();
  String selectExcel = '';
  String selectMonth = '';
  bool showMonthYear = false;
  bool showDayBook = false;
  bool showStudentDetails = false;
  bool selectStockDetails = false;
  bool showSales = false;
  String get title => _title;
  bool get showInvoices => _showInvoices;
  bool get showEstimates => _showEstimates;
  bool get showIncome => _showIncome;
  bool get showVouchers => _showVouchers;
  bool get showCashBank => _showCashBank;
  bool get showPayroll => _showPayroll;
  String get dropdownValue => _dropDownValue;
  bool get showSalesInvoices => _showSalesInvoices;
  String get selectTextDrop => _selectTextDrop;
  String get selectBankDrop => _selectBankDrop;
  String get selectCashDrop => _selectCashDrop;
  bool get showCredits => _showCredit;
  final Map<String, bool> _expandedState = {};
  void setTitle(String newTitle) {
    _title = newTitle;
    notifyListeners();
  }

  void toggleShowInvoices() {
    _showInvoices = !_showInvoices;
    _showEstimates = false;
    _showIncome = false;
    _showVouchers = false;
    _showCashBank = false;
    _showPayroll = false;
    notifyListeners();
  }

  void toggleShowEstimates() {
    _showEstimates = !_showEstimates;
    _showInvoices = false;
    _showIncome = false;
    _showVouchers = false;
    _showCashBank = false;
    _showPayroll = false;
    notifyListeners();
  }

  void toggleShowIncome() {
    _showIncome = !_showIncome;
    _showInvoices = false;
    _showEstimates = false;
    _showVouchers = false;
    _showCashBank = false;
    _showPayroll = false;
    notifyListeners();
  }

  void toggleShowVouchers() {
    _showVouchers = !_showVouchers;
    _showInvoices = false;
    _showIncome = false;
    _showEstimates = false;
    _showCashBank = false;
    _showPayroll = false;
    notifyListeners();
  }

  void toggleShowCashBank() {
    _showCashBank = !_showCashBank;
    _showInvoices = false;
    _showIncome = false;
    _showVouchers = false;
    _showEstimates = false;
    _showPayroll = false;
    notifyListeners();
  }

  void toggleShowPayroll() {
    _showPayroll = !_showPayroll;
    _showInvoices = false;
    _showIncome = false;
    _showVouchers = false;
    _showCashBank = false;
    _showEstimates = false;
    notifyListeners();
  }

  set dropdownValue(String value) {
    _dropDownValue = value;
    notifyListeners();
  }

  void toggleShowSalesInvoice() {
    _showSalesInvoices = true;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    notifyListeners();
  }

  void setShowDeliveryChallen() {
    showDeliveryChallen = true;
    _showSalesInvoices = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
    showLoan = false;
    showAnnextureone = false;
    showMonthYear = false;
    showDayBook = false;
    notifyListeners();
  }

  void setShowCredits() {
    _showCredit = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    notifyListeners();
  }

  void setShowDeveloping() {
    showProcessingScreen = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showIncomeWidget = false;
    showPayment = false;
    showReceipt = false;
    notifyListeners();
  }

  void showIncomeWidgetss() {
    showIncomeWidget = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    notifyListeners();
  }

  void showPayments() {
    showPayment = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showIncomeWidget = false;
    showReceipt = false;
    notifyListeners();
  }

  void setSelectRecipnt() {
    showReceipt = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    notifyListeners();
  }

  void createContantList() {
    showCreateContants = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    notifyListeners();
  }

  void setShowItemType() {
    showItemType = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    notifyListeners();
  }

  void showGstTax() {
    showItemType = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    notifyListeners();
  }

  void setItemName() {
    showItemName = true;
    showItemType = false;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    notifyListeners();
  }

  void stockOpening() {
    showStockOpening = true;
    showItemType = false;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemName = false;
  }

  void showBankAccounts() {
    showBankAccount = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
  }

  void showLoanAdvance() {
    showLoan = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
  }

  void showAnnextureOne() {
    showAnnextureone = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
    showLoan = false;
  }

  void setSelectMonth() {
    showMonthYear = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
    showLoan = false;
    showAnnextureone = false;
  }

  void setSelectDayBook() {
    showDayBook = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
    showLoan = false;
    showAnnextureone = false;
    showMonthYear = false;
  }

  void setSelectStockSelect() {
    selectStockDetails = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
    showLoan = false;
    showAnnextureone = false;
    showMonthYear = false;
    showDayBook = false;
  }

  void setShowSales() {
    showSales = true;
    _showSalesInvoices = false;
    showDeliveryChallen = false;
    _showCredit = false;
    showProcessingScreen = false;
    showPayment = false;
    showIncomeWidget = false;
    showReceipt = false;
    showCreateContants = false;
    showItemType = false;
    showStockOpening = false;
    showItemName = false;
    showBankAccount = false;
    showLoan = false;
    showAnnextureone = false;
    showMonthYear = false;
    showDayBook = false;
    selectStockDetails = false;
  }

  void setSelectedDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
  }

  void toggleMenu() {
    showMenu = !showMenu;
    notifyListeners();
  }

  void setSelectedValue(String value) {
    _selectTextDrop = value;
    notifyListeners();
  }

  void setSelectedBankDrop(String value) {
    _selectBankDrop = value;
    notifyListeners();
  }

  void setSelectedCashDrop(String value) {
    _selectCashDrop = value;
    notifyListeners();
  }

  void createSelectedOne(String value) {
    createCompesationDrop = value;
    notifyListeners();
  }

  void createSelectedTwo(String value) {
    createCompesationDrop = value;
    notifyListeners();
  }

  void setSelectCredit(String value) {
    selectCredit = value;
    notifyListeners();
  }

  void setSelectCustomer(String value) {
    selectCustomer = value;
    notifyListeners();
  }

  void setSelectBank(String value) {
    selectBank = value;
    notifyListeners();
  }

  void selectIncome(String value) {
    selectIncomSelect = value;
    notifyListeners();
  }

  void payementSelect(String value) {
    paymentSelect = value;
    notifyListeners();
  }

  void gstSelects(String value) {
    gstSelect = value;
    notifyListeners();
  }

  void setItemType(String value) {
    itemTypeSelect = value;
    notifyListeners();
  }

  void setSacSelect(String value) {
    sacSelect = value;
    notifyListeners();
  }

  void setGstTaxSelect(String value) {
    gstTaxSelect = value;
    notifyListeners();
  }

  void setBankAccont(String value) {
    bankAccount = value;
    notifyListeners();
  }

  void selectExcelFun(String value) {
    selectExcel = value;
    notifyListeners();
  }

  void selectMonthYear(String value) {
    selectMonth = value;
    notifyListeners();
  }

  void toggleExpansion(String name) {
    if (_expandedState.containsKey(name)) {
      _expandedState[name] = !_expandedState[name]!;
    } else {
      
      _expandedState[name] = true;
    }
    notifyListeners();
  }

  bool isExpanded(String name) {
    return _expandedState.containsKey(name) ? _expandedState[name]! : false;
  }
}
