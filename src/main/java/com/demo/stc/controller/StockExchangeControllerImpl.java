//package com.demo.stc.controller;
//
//import java.sql.SQLException;
//
//import javax.validation.Valid;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import com.demo.stc.model.StockExchange;
//import com.demo.stc.service.StockExchangeService;
//
//@Controller
//public class StockExchangeControllerImpl {
//
//	@Autowired
//	StockExchangeService stockexchangeservice;
//
//	@RequestMapping("/create_stock_exchange_details_page")
//	public String create_stock_exchange_details_page(Model model) {
//		StockExchange stockexchange = new StockExchange();
//		model.addAttribute("stockexchange", stockexchange);
//		return "create_stock_exchange";
//	}
//
//	
//	@RequestMapping(value = "/insert_stock_exchange", method = RequestMethod.POST)
//	public String insert(@Valid @ModelAttribute("stockexchange") StockExchange stockexchange, BindingResult result, Model model) throws SQLException
//	{
//			
//
//				try {
//					insertStockExchange(stockexchange);
//				} catch (Exception e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			
//
//			return "redirect:/list_stock_exchange";
//	}
//	public StockExchange insertStockExchange(StockExchange stockexchange) throws Exception {
//		return stockexchangeservice.insertStockExchange(stockexchange);
//	}
//
//
//}
