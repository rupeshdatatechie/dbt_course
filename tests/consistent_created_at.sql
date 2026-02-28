SELECT
    r.review_date,
    l.created_at
FROM fct_reviews r
JOIN dim_listings_cleansed l
    ON r.listing_id = l.listing_id
WHERE r.review_date < l.created_at