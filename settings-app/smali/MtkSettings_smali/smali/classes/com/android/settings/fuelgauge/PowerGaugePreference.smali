.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private mProgress:Ljava/lang/CharSequence;

.field private mShowAnomalyIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 50
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 6

    .line 46
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 54
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 p1, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const p2, 0x7f0d010b    # @layout/preference_widget_summary 'res/layout/preference_widget_summary.xml'

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setWidgetLayoutResource(I)V

    .line 62
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 63
    iput-object p4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 64
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 65
    return-void
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 107
    const v0, 0x7f0a03dc    # @id/widget_summary

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 110
    const v1, 0x7f0801ae    # @drawable/ic_warning_24dp 'res/drawable/ic_warning_24dp.xml'

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 116
    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 70
    return-void
.end method

.method public setPercent(D)V
    .locals 1

    .line 73
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/settings/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 75
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 84
    return-void
.end method

.method public shouldShowAnomalyIcon(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 93
    return-void
.end method
