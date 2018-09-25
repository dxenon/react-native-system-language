
#import "RNSystemLanguage.h"

@implementation RNSystemLanguage

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

static id ObjectOrNull(id object)
{
    return object ?: [NSNull null];
}

- (NSDictionary *)constantsToExport
{
    NSLocale *locale = [NSLocale currentLocale];

    return @{
        @"localeIdentifier": ObjectOrNull([locale objectForKey:NSLocaleIdentifier]),
        @"language": ObjectOrNull([locale objectForKey:NSLocaleLanguageCode]),
        @"country": ObjectOrNull([locale objectForKey:NSLocaleCountryCode]),
        @"usesMetricSystem": ObjectOrNull([locale objectForKey:NSLocaleUsesMetricSystem]),
        @"measurementSystem": ObjectOrNull([locale objectForKey:NSLocaleMeasurementSystem]),
        @"decimalSeparator": ObjectOrNull([locale objectForKey:NSLocaleDecimalSeparator]),
        @"groupingSeparator": ObjectOrNull([locale objectForKey:NSLocaleGroupingSeparator]),
        @"currencySymbol": ObjectOrNull([locale objectForKey:NSLocaleCurrencySymbol]),
        @"currencyCode": ObjectOrNull([locale objectForKey:NSLocaleCurrencyCode]),
        @"collatorIdentifier": ObjectOrNull([locale objectForKey:NSLocaleCollatorIdentifier]),
        @"quotationBeginDelimiterKey": ObjectOrNull([locale objectForKey:NSLocaleQuotationBeginDelimiterKey]),
        @"quotationEndDelimiterKey": ObjectOrNull([locale objectForKey:NSLocaleQuotationEndDelimiterKey]),
        @"alternateQuotationBeginDelimiterKey": ObjectOrNull([locale objectForKey:NSLocaleAlternateQuotationBeginDelimiterKey]),
        @"alternateQuotationEndDelimiterKey": ObjectOrNull([locale objectForKey:NSLocaleAlternateQuotationEndDelimiterKey]),
        @"preferredLanguages": ObjectOrNull([NSLocale preferredLanguages])
    };
}

@end
