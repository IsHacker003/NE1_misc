.class public interface abstract Lcom/mediatek/settings/ext/ISimManagementExt;
.super Ljava/lang/Object;
.source "ISimManagementExt.java"


# virtual methods
.method public abstract configSimPreferenceScreen(Landroid/support/v7/preference/Preference;Ljava/lang/String;I)V
.end method

.method public abstract customBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract customRegisteBroadcast(Landroid/content/IntentFilter;)V
.end method

.method public abstract customizeListArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract customizeMainCapabily(ZI)V
.end method

.method public abstract customizeSubscriptionInfoArray(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
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

.method public abstract handleEvent(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/Context;Landroid/support/v7/preference/Preference;)V
.end method

.method public abstract hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V
.end method

.method public abstract initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initPlugin(Landroid/support/v14/preference/PreferenceFragment;)V
.end method

.method public abstract initPrimarySim(Landroid/support/v14/preference/PreferenceFragment;)V
.end method

.method public abstract isNeedAskFirstItemForSms()Z
.end method

.method public abstract isSimDialogNeeded()Z
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPreferenceClick(Landroid/content/Context;)V
.end method

.method public abstract onResume(Landroid/content/Context;)V
.end method

.method public abstract setCurrNetworkIcon(Landroid/widget/ImageView;II)V
.end method

.method public abstract setDataState(I)V
.end method

.method public abstract setDataStateEnable(I)V
.end method

.method public abstract setDefaultCallValue(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;
.end method

.method public abstract setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
.end method

.method public abstract setPrefSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
.end method

.method public abstract setRadioPowerState(IZ)V
.end method

.method public abstract setSmsAutoItemIcon(Landroid/widget/ImageView;II)V
.end method

.method public abstract showChangeDataConnDialog(Landroid/support/v14/preference/PreferenceFragment;Z)V
.end method

.method public abstract simDialogOnClick(IILandroid/content/Context;)Z
.end method

.method public abstract subChangeUpdatePrimarySIM()V
.end method

.method public abstract updateDefaultSmsSummary(Landroid/support/v7/preference/Preference;)V
.end method

.method public abstract updateList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract updatePrefState()V
.end method

.method public abstract useCtTestcard()Z
.end method
