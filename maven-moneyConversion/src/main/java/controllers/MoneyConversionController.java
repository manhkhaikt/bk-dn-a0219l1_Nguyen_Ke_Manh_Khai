package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;

@Controller
public class MoneyConversionController {
    private static final double TYGIA = 23145.00;

    @GetMapping("/moneyConversion")
    public String moneyConversion() {
        return "index";
    }

    @PostMapping("/moneyConversion")
    public String convert(@RequestParam String amount, @RequestParam String to, @RequestParam String from, ModelMap model) {
        double result;
        DecimalFormat df = new DecimalFormat("###,###,###.###");
        if (to.equals(from)) {
            result = Double.parseDouble(amount);
            model.put("result", df.format(result));
        } else if (from.equals("VND")) {
            result = Double.parseDouble(amount) / TYGIA;
            model.put("result", df.format(result) + " USD");
        } else if (from.equals("USD")) {
            result = Double.parseDouble(amount) * TYGIA;
            model.put("result", df.format(result) + " VND");
        }
        return "index";
    }
}
