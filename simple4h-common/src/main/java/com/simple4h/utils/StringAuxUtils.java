package com.simple4h.utils;

import com.google.common.base.Splitter;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

/**
 * Create By Simple4H
 * Date: 2019-12-02 57:46
 */
public class StringAuxUtils {

    private static Splitter commaSplitter = Splitter.on(",");

    public static boolean containKeywords(String content, String keywords) {
        if (StringUtils.isEmpty(keywords)) {
            return true;
        } else {
            return containKeywords(content, commaSplitter.splitToList(keywords));
        }
    }

    public static boolean containKeywords(String content, List<String> keywords) {
        if (keywords == null || keywords.size() == 0) {
            return true;
        }
        for (String kw : keywords) {
            if (StringUtils.containsIgnoreCase(content, kw)) {
                return true;
            }
        }
        return false;
    }

    public static String fileExt(String fileName) {
        String ext = StringUtils.substringAfterLast(fileName, ".");
        ext = ("".equals(ext) ? "" : ("." + ext)).toLowerCase();
        return ext;
    }

    public static String joinString(String... strings) {
        StringBuilder sb = new StringBuilder();
        for (String string : strings) {
            if (string != null) {
                sb.append(string);
            }
        }
        return sb.toString();
    }

    public static String joinStringWithCommand(String... strings) {
        StringBuilder sb = new StringBuilder();
        for (String string : strings) {
            if (string != null) {
                sb.append(string);
            }
        }
        return sb.toString();
    }
}
