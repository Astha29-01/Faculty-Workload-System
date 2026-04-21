import pandas as pd

def remove_duplicates(df):
    """Remove duplicate rows"""
    df = df.drop_duplicates()
    return df


def handle_missing_values(df):
    """Fill missing faculty names"""
    
    if "faculty_name" in df.columns:
        df["faculty_name"] = df["faculty_name"].fillna("Unknown")
    
    return df


def fix_negative_values(df):
    """Convert negative hours to positive"""
    
    if "hours_assigned" in df.columns:
        df["hours_assigned"] = df["hours_assigned"].abs()
    
    return df


def drop_null_rows(df):
    """Remove rows with null values"""
    
    df = df.dropna()
    
    return df