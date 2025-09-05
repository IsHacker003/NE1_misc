.class public interface abstract Lcom/mediatek/settings/ext/IRCSSettings;
.super Ljava/lang/Object;
.source "IRCSSettings.java"


# virtual methods
.method public abstract addRCSPreference(Landroid/app/Activity;Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public abstract getDefaultSmsClickContentExt(Ljava/util/List;II)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;II)I"
        }
    .end annotation
.end method

.method public abstract isNeedAskFirstItemForSms()Z
.end method

.method public abstract setDefaultSmsApplication(Ljava/lang/String;Landroid/content/Context;)V
.end method
