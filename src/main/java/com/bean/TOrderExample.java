package com.bean;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TOrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TOrderExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOrderIdIsNull() {
            addCriterion("order_id is null");
            return (Criteria) this;
        }

        public Criteria andOrderIdIsNotNull() {
            addCriterion("order_id is not null");
            return (Criteria) this;
        }

        public Criteria andOrderIdEqualTo(Integer value) {
            addCriterion("order_id =", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotEqualTo(Integer value) {
            addCriterion("order_id <>", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThan(Integer value) {
            addCriterion("order_id >", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("order_id >=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThan(Integer value) {
            addCriterion("order_id <", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdLessThanOrEqualTo(Integer value) {
            addCriterion("order_id <=", value, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdIn(List<Integer> values) {
            addCriterion("order_id in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotIn(List<Integer> values) {
            addCriterion("order_id not in", values, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdBetween(Integer value1, Integer value2) {
            addCriterion("order_id between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderIdNotBetween(Integer value1, Integer value2) {
            addCriterion("order_id not between", value1, value2, "orderId");
            return (Criteria) this;
        }

        public Criteria andOrderPriceIsNull() {
            addCriterion("order_price is null");
            return (Criteria) this;
        }

        public Criteria andOrderPriceIsNotNull() {
            addCriterion("order_price is not null");
            return (Criteria) this;
        }

        public Criteria andOrderPriceEqualTo(BigDecimal value) {
            addCriterion("order_price =", value, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceNotEqualTo(BigDecimal value) {
            addCriterion("order_price <>", value, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceGreaterThan(BigDecimal value) {
            addCriterion("order_price >", value, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceGreaterThanOrEqualTo(BigDecimal value) {
            addCriterion("order_price >=", value, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceLessThan(BigDecimal value) {
            addCriterion("order_price <", value, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceLessThanOrEqualTo(BigDecimal value) {
            addCriterion("order_price <=", value, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceIn(List<BigDecimal> values) {
            addCriterion("order_price in", values, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceNotIn(List<BigDecimal> values) {
            addCriterion("order_price not in", values, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("order_price between", value1, value2, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andOrderPriceNotBetween(BigDecimal value1, BigDecimal value2) {
            addCriterion("order_price not between", value1, value2, "orderPrice");
            return (Criteria) this;
        }

        public Criteria andFirstPartyIsNull() {
            addCriterion("first_party is null");
            return (Criteria) this;
        }

        public Criteria andFirstPartyIsNotNull() {
            addCriterion("first_party is not null");
            return (Criteria) this;
        }

        public Criteria andFirstPartyEqualTo(String value) {
            addCriterion("first_party =", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotEqualTo(String value) {
            addCriterion("first_party <>", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyGreaterThan(String value) {
            addCriterion("first_party >", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyGreaterThanOrEqualTo(String value) {
            addCriterion("first_party >=", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyLessThan(String value) {
            addCriterion("first_party <", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyLessThanOrEqualTo(String value) {
            addCriterion("first_party <=", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyLike(String value) {
            addCriterion("first_party like", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotLike(String value) {
            addCriterion("first_party not like", value, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyIn(List<String> values) {
            addCriterion("first_party in", values, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotIn(List<String> values) {
            addCriterion("first_party not in", values, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyBetween(String value1, String value2) {
            addCriterion("first_party between", value1, value2, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPartyNotBetween(String value1, String value2) {
            addCriterion("first_party not between", value1, value2, "firstParty");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneIsNull() {
            addCriterion("first_phone is null");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneIsNotNull() {
            addCriterion("first_phone is not null");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneEqualTo(String value) {
            addCriterion("first_phone =", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotEqualTo(String value) {
            addCriterion("first_phone <>", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneGreaterThan(String value) {
            addCriterion("first_phone >", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("first_phone >=", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneLessThan(String value) {
            addCriterion("first_phone <", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneLessThanOrEqualTo(String value) {
            addCriterion("first_phone <=", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneLike(String value) {
            addCriterion("first_phone like", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotLike(String value) {
            addCriterion("first_phone not like", value, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneIn(List<String> values) {
            addCriterion("first_phone in", values, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotIn(List<String> values) {
            addCriterion("first_phone not in", values, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneBetween(String value1, String value2) {
            addCriterion("first_phone between", value1, value2, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andFirstPhoneNotBetween(String value1, String value2) {
            addCriterion("first_phone not between", value1, value2, "firstPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPartyIsNull() {
            addCriterion("second_party is null");
            return (Criteria) this;
        }

        public Criteria andSecondPartyIsNotNull() {
            addCriterion("second_party is not null");
            return (Criteria) this;
        }

        public Criteria andSecondPartyEqualTo(String value) {
            addCriterion("second_party =", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotEqualTo(String value) {
            addCriterion("second_party <>", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyGreaterThan(String value) {
            addCriterion("second_party >", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyGreaterThanOrEqualTo(String value) {
            addCriterion("second_party >=", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyLessThan(String value) {
            addCriterion("second_party <", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyLessThanOrEqualTo(String value) {
            addCriterion("second_party <=", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyLike(String value) {
            addCriterion("second_party like", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotLike(String value) {
            addCriterion("second_party not like", value, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyIn(List<String> values) {
            addCriterion("second_party in", values, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotIn(List<String> values) {
            addCriterion("second_party not in", values, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyBetween(String value1, String value2) {
            addCriterion("second_party between", value1, value2, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPartyNotBetween(String value1, String value2) {
            addCriterion("second_party not between", value1, value2, "secondParty");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneIsNull() {
            addCriterion("second_phone is null");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneIsNotNull() {
            addCriterion("second_phone is not null");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneEqualTo(String value) {
            addCriterion("second_phone =", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotEqualTo(String value) {
            addCriterion("second_phone <>", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneGreaterThan(String value) {
            addCriterion("second_phone >", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("second_phone >=", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneLessThan(String value) {
            addCriterion("second_phone <", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneLessThanOrEqualTo(String value) {
            addCriterion("second_phone <=", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneLike(String value) {
            addCriterion("second_phone like", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotLike(String value) {
            addCriterion("second_phone not like", value, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneIn(List<String> values) {
            addCriterion("second_phone in", values, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotIn(List<String> values) {
            addCriterion("second_phone not in", values, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneBetween(String value1, String value2) {
            addCriterion("second_phone between", value1, value2, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andSecondPhoneNotBetween(String value1, String value2) {
            addCriterion("second_phone not between", value1, value2, "secondPhone");
            return (Criteria) this;
        }

        public Criteria andOrderStatusIsNull() {
            addCriterion("order_status is null");
            return (Criteria) this;
        }

        public Criteria andOrderStatusIsNotNull() {
            addCriterion("order_status is not null");
            return (Criteria) this;
        }

        public Criteria andOrderStatusEqualTo(Integer value) {
            addCriterion("order_status =", value, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusNotEqualTo(Integer value) {
            addCriterion("order_status <>", value, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusGreaterThan(Integer value) {
            addCriterion("order_status >", value, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("order_status >=", value, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusLessThan(Integer value) {
            addCriterion("order_status <", value, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusLessThanOrEqualTo(Integer value) {
            addCriterion("order_status <=", value, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusIn(List<Integer> values) {
            addCriterion("order_status in", values, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusNotIn(List<Integer> values) {
            addCriterion("order_status not in", values, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusBetween(Integer value1, Integer value2) {
            addCriterion("order_status between", value1, value2, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("order_status not between", value1, value2, "orderStatus");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeIsNull() {
            addCriterion("order_create_time is null");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeIsNotNull() {
            addCriterion("order_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeEqualTo(Date value) {
            addCriterion("order_create_time =", value, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeNotEqualTo(Date value) {
            addCriterion("order_create_time <>", value, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeGreaterThan(Date value) {
            addCriterion("order_create_time >", value, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("order_create_time >=", value, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeLessThan(Date value) {
            addCriterion("order_create_time <", value, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("order_create_time <=", value, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeIn(List<Date> values) {
            addCriterion("order_create_time in", values, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeNotIn(List<Date> values) {
            addCriterion("order_create_time not in", values, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeBetween(Date value1, Date value2) {
            addCriterion("order_create_time between", value1, value2, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andOrderCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("order_create_time not between", value1, value2, "orderCreateTime");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}