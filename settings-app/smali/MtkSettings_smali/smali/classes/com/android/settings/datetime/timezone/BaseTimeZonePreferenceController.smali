.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BaseTimeZonePreferenceController.java"


# instance fields
.field private mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;

    invoke-interface {p1}, Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;->onClick()V

    .line 45
    const/4 p1, 0x1

    return p1

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnClickListener(Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->mOnClickListener:Lcom/android/settings/datetime/timezone/OnPreferenceClickListener;

    .line 50
    return-void
.end method
