
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import java.util.Locale;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;

public class RNSystemLanguageModule extends ReactContextBaseJavaModule {

    private static final String LANGUAGE_KEY = "language";
    private static final String LANGUAGE_ISO3_KEY = "languageISO3";
    private static final String COUNTRY_KEY = "country";
    private static final String COUNTRY_ISO3_KEY = "countryISO3";
    private static final String CURRENCY_SYMBOL = "currencySymbol";
    private static final String CURRENCY_CODE = "currencyCode";

    private final ReactApplicationContext reactContext;

    public RNSystemLanguageModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNSystemLanguage";
    }

    @Override
    public Map<String, Object> getConstants() {
        final Map<String, Object> constants = new HashMap<>();

        Locale locale = getLocale();
        Currency currency = Currency.getInstance(locale);

        constants.put(LANGUAGE_KEY, locale.getLanguage());
        constants.put(LANGUAGE_ISO3_KEY, locale.getISO3Language());
        constants.put(COUNTRY_KEY, locale.getCountry());
        constants.put(COUNTRY_ISO3_KEY, locale.getISO3Country());

        constants.put(CURRENCY_SYMBOL, currency != null ? currency.getSymbol() : null);
        constants.put(CURRENCY_CODE, currency != null ? currency.getCurrencyCode() : null);

        return constants;
    }

    private Locale getLocale() {
        return this.reactContext.getResources().getConfiguration().locale;
    }
}