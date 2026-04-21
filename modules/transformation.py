def merge_datasets(workload, faculty, subjects):
    """Merge datasets"""
    
    merged = workload.merge(
        faculty,
        on="faculty_id"
    )
    
    merged = merged.merge(
        subjects,
        on="subject_id"
    )
    
    return merged


def add_total_hours(df):
    """Add calculated column"""
    
    df["total_hours"] = df["hours_assigned"]
    
    return df


def department_aggregation(df):
    """Aggregate department workload"""
    
    result = df.groupby(
        "department"
    )["hours_assigned"].sum()
    
    return result