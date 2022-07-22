package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Enquete;

public class EnqueteValidator {
    public static List<String> validate(Enquete e) {
        List<String> errors = new ArrayList<String>();

        String treatment_error = validateTreatment(e.getTreatment());
        if (!treatment_error.equals("")) {
            errors.add(treatment_error);
        }

        String price_error = validatePrice(e.getPrice());
        if (!price_error.equals("")) {
            errors.add(price_error);
        }

        String counseling_error = validateCounseling(e.getCounseling());
        if (!counseling_error.equals("")) {
            errors.add(counseling_error);
        }

        String atmosphere_error = validateAtmosphere(e.getAtmosphere());
        if (!atmosphere_error.equals("")) {
            errors.add(atmosphere_error);
        }

        String support_error = validateSupport(e.getSupport());
        if (!support_error.equals("")) {
            errors.add(support_error);
        }

        String name_error = validateName(e.getName());
        if (!name_error.equals("")) {
            errors.add(name_error);
        }

        String sex_error = validateSex(e.getSex());
        if (!sex_error.equals("")) {
            errors.add(sex_error);
        }

        String age_error = validateAge(e.getAge());
        if (!age_error.equals("")) {
            errors.add(age_error);
        }

        String content_error = validateContent(e.getContent());
        if (!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    private static String validateTreatment(String treatment) {
        if (treatment == null || treatment.equals("")) {
            return "施術の内容について選択してください。";
        }

        return "";
    }

    private static String validatePrice(String price) {
        if (price == null || price.equals("")) {
            return "施術の価格について選択してください。";
        }

        return "";
    }

    private static String validateCounseling(String counseling) {
        if (counseling == null || counseling.equals("")) {
            return "カウンセリングについて選択してください。";
        }

        return "";
    }

    private static String validateAtmosphere(String atmosphere) {
        if (atmosphere == null || atmosphere.equals("")) {
            return "店内の雰囲気について選択してください。";
        }

        return "";
    }

    private static String validateSupport(String support) {
        if (support == null || support.equals("")) {
            return "施術者の対応について選択してください。";
        }

        return "";
    }

    private static String validateName(String name) {
        if (name == null || name.equals("")) {
            return "名前を入力してください。";
        }

        return "";
    }

    private static String validateSex(String sex) {
        if (sex == null || sex.equals("")) {
            return "性別を選択してください。";
        }

        return "";
    }

    private static String validateAge(String age) {
        if (age == null || age.equals("")) {
            return "年齢を選択してください。";
        }

        return "";
    }

    private static String validateContent(String content) {
        if (content == null || content.equals("")) {
            return "ご意見・ご要望を入力してください。";
        }

        return "";
    }
}
