.class public Lcom/mediatek/settings/ext/DefaultRCSSettings;
.super Landroid/content/ContextWrapper;
.source "DefaultRCSSettings.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRCSSettings;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultRCSSettings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public addRCSPreference(Landroid/app/Activity;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 28
    const-string p1, "@M_DefaultRCSSettings"

    const-string p2, "DefaultRCSSettings"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public getDefaultSmsClickContentExt(Ljava/util/List;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;II)I"
        }
    .end annotation

    .line 49
    const-string p1, "@M_DefaultRCSSettings"

    const-string p2, "getDefaultSmsClickContent"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return p3
.end method

.method public isNeedAskFirstItemForSms()Z
    .locals 2

    .line 36
    const-string v0, "@M_DefaultRCSSettings"

    const-string v1, "isNeedAskFirstItemForSms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public setDefaultSmsApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 56
    return-void
.end method
