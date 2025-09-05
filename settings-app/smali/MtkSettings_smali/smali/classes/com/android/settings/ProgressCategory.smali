.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 37
    const p1, 0x7f0d00f6    # @layout/preference_progress_category 'res/layout/preference_progress_category.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 42
    const p1, 0x7f0d00f6    # @layout/preference_progress_category 'res/layout/preference_progress_category.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 48
    const p1, 0x7f0d00f6    # @layout/preference_progress_category 'res/layout/preference_progress_category.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 53
    const p1, 0x7f0d00f6    # @layout/preference_progress_category 'res/layout/preference_progress_category.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 63
    const v0, 0x7f0a02c5    # @id/scanning_progress

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    move v0, v2

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    nop

    .line 67
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez p1, :cond_5

    if-nez v0, :cond_3

    goto :goto_3

    .line 75
    :cond_3
    iget-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez p1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    if-nez p1, :cond_4

    .line 77
    new-instance p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    .line 78
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    const v0, 0x7f0d00ee    # @layout/preference_empty_list 'res/layout/preference_empty_list.xml'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    iget v0, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 83
    iput-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_4

    .line 70
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz p1, :cond_6

    .line 71
    iget-object p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    iput-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 86
    :cond_6
    :goto_4
    return-void
.end method

.method public setEmptyTextRes(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    .line 58
    return-void
.end method

.method public setNoDeviceFoundAdded(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 97
    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 92
    return-void
.end method
