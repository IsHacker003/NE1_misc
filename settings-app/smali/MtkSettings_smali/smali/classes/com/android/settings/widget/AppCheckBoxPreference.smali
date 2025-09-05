.class public Lcom/android/settings/widget/AppCheckBoxPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "AppCheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 36
    const p1, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AppCheckBoxPreference;->setLayoutResource(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const p1, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/AppCheckBoxPreference;->setLayoutResource(I)V

    .line 32
    return-void
.end method
