.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroid/support/v7/preference/Preference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33
    const v0, 0x7f040129    # @attr/preferenceStyle

    const v1, 0x101008e    # @android:attr/preferenceStyle

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result p1

    .line 39
    if-gez p1, :cond_0

    .line 40
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenZoomPreference;->setVisible(Z)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenZoomPreference;->setEnabled(Z)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result p2

    .line 45
    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    :cond_1
    :goto_0
    return-void
.end method
