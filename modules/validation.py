def check_nulls(df):
    """Count null values"""
    
    return df.isnull().sum()


def check_duplicates(df):
    """Count duplicate rows"""
    
    return df.duplicated().sum()


def check_negative_values(df):
    """Check negative values"""
    
    if "hours_assigned" in df.columns:
        return (df["hours_assigned"] < 0).sum()
    
    return 0