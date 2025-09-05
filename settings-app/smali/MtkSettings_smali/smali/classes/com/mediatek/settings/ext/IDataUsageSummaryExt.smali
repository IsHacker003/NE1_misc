.class public interface abstract Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "IDataUsageSummaryExt.java"


# virtual methods
.method public abstract customDualReceiver(Ljava/lang/String;)Z
.end method

.method public abstract customReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract customTempdata(I)Z
.end method

.method public abstract customTempdataHide(Landroid/support/v14/preference/SwitchPreference;)V
.end method

.method public abstract isAllowDataDisableForOtherSubscription()Z
.end method

.method public abstract isAllowDataEnable(I)Z
.end method

.method public abstract onBindViewHolder(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract onDisablingData(I)Z
.end method

.method public abstract setPreferenceSummary(Landroid/support/v7/preference/Preference;)V
.end method
