.class public Lcom/android/settings/widget/MasterCheckBoxPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mEnableCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 58
    const v0, 0x7f0d0105    # @layout/preference_widget_master_checkbox 'res/layout/preference_widget_master_checkbox.xml'

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const v0, 0x1020018    # @android:id/widget_frame

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/android/settings/widget/MasterCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    const v0, 0x7f0a00b7    # @id/checkboxWidget

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 83
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 88
    :cond_1
    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 101
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setCheckBoxEnabled(Z)V

    .line 94
    return-void
.end method
