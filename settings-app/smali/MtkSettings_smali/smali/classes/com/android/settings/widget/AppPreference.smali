.class public Lcom/android/settings/widget/AppPreference;
.super Landroid/support/v7/preference/Preference;
.source "AppPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    const p1, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AppPreference;->setLayoutResource(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const p1, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AppPreference;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 53
    const v0, 0x7f0a034d    # @id/summary_container

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    const v0, 0x102000d    # @android:id/progress

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    if-eqz v0, :cond_1

    .line 57
    iget v0, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    :goto_1
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/settings/widget/AppPreference;->mProgress:I

    .line 45
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/AppPreference;->mProgressVisible:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/widget/AppPreference;->notifyChanged()V

    .line 47
    return-void
.end method
